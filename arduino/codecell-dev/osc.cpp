/*
 * OSC Communication Module Implementation
 */

#include "osc.h"
#include "config.h"
#include "secrets.h"
#include "imu.h"

#ifdef LED
#include "led.h"
#endif

#ifdef BATTERY
#include "battery.h"
#endif

#ifdef LIGHT
#include "light.h"
#endif
#ifdef BUTTON
#include "button.h"
#endif

// Network state
WiFiUDP udp;
WiFiUDP udpReceive;

void initNetwork(const char* ssid, const char* password, const char* targetIP, int port) {
  Serial.printf("Connecting to WiFi: %s\n", ssid);
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  
  Serial.printf("\nWiFi connected! IP: %s\n", WiFi.localIP().toString().c_str());
  Serial.printf("Sending OSC to %s:%d\n", targetIP, port);
  Serial.printf("Listening on port %d\n", SECRET_INPORT);
  
  udpReceive.begin(SECRET_INPORT);
}

void sendOSC(const char* targetIP, int port) {
  IPAddress ip;
  ip.fromString(targetIP);
  
  OSCBundle bundle;
  char address[64];
  
  #ifdef QUAT
  if (quatChanged()) {
    snprintf(address, sizeof(address), "%s/%d/quat", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(qw).add(qx).add(qy).add(qz);
  }
  #endif
  
  #ifdef EULER
  if (eulerChanged()) {
    snprintf(address, sizeof(address), "%s/%d/euler", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(ypr.roll).add(ypr.pitch).add(ypr.yaw);
  }
  #endif
  
  #ifdef ACCEL
  if (accelChanged()) {
    snprintf(address, sizeof(address), "%s/%d/accel", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(ax).add(ay).add(az);
  }
  #endif
  
  #ifdef BATTERY
  if (batteryChanged()) {
    snprintf(address, sizeof(address), "%s/%d/battery", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add((int)batteryVoltage).add((int)batteryPercentage).add(getPowerState());
  }
  #endif
  
  #ifdef LIGHT
  if (proximityChanged() || ambientChanged() || whiteChanged()) {
    snprintf(address, sizeof(address), "%s/%d/light", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add((int)proximityValue).add((int)ambientValue).add((int)whiteValue);
  }
  #endif
  
  #ifdef BUTTON
  if (buttonChanged) {
    snprintf(address, sizeof(address), "%s/%d/button", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add((int)buttonStates[0]).add((int)buttonStates[1]);
  }
  #endif  
  #ifdef PING
  static unsigned long lastPing = 0;
  if (millis() - lastPing >= PING_RATE_MS) {
    snprintf(address, sizeof(address), "%s/%d/ping", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(1);
    lastPing = millis();
  }
  #endif
  
  #ifdef IP
  static unsigned long lastIP = 0;
  if (millis() - lastIP >= IP_RATE_MS) {
    String ipStr = WiFi.localIP().toString();
    snprintf(address, sizeof(address), "%s/%d/ip", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(ipStr.c_str());
    lastIP = millis();
  }
  #endif
  
  #ifdef UPTIME
  static unsigned long lastUptime = 0;
  if (millis() - lastUptime >= UPTIME_RATE_MS) {
    unsigned long elapsed = millis() / 1000;
    snprintf(address, sizeof(address), "%s/%d/uptime", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add((int)elapsed);
    lastUptime = millis();
  }
  #endif
  
  udp.beginPacket(ip, port);
  bundle.send(udp);
  udp.endPacket();
  bundle.empty();
}

void sendDebugOSC(const char* message, int value1, int value2, int value3) {
  IPAddress ip;
  ip.fromString(SECRET_IP);
  
  OSCBundle bundle;
  char address[64];
  snprintf(address, sizeof(address), "%s/%d/debug", BASE_ADDRESS, DEVICE_INDEX);
  bundle.add(address).add(message).add(value1).add(value2).add(value3);
  
  udp.beginPacket(ip, SECRET_OUTPORT);
  bundle.send(udp);
  udp.endPacket();
  bundle.empty();
}

void receiveOSC() {
  int size = udpReceive.parsePacket();
  
  if (size > 0) {
    // Read the full UDP packet into a buffer once.
    // The CNMAT OSC library expects byte-by-byte fill().
    constexpr int kMaxPacket = 512;
    if (size > kMaxPacket) {
      Serial.printf("OSC packet too large (%d), dropping\n", size);
      while (udpReceive.available()) { udpReceive.read(); }
      return;
    }

    uint8_t buf[kMaxPacket];
    int readLen = udpReceive.read(buf, size);
    if (readLen <= 0) {
      return;
    }

    auto handleMessage = [](OSCMessage &msg) {
      if (msg.fullMatch("/reboot")) {
        Serial.println("Reboot");
        ESP.restart();
      }
      
      #ifdef LED
      if (msg.fullMatch("/led")) {
        if (msg.size() == 1) {
          int value = msg.getInt(0);
          if (value == 0) {
            // Turn LED off completely
            setBrightness(0);
            neopixelWrite(LED_PIN, 0, 0, 0);  // Actually turn off the LED
          } else if (value == 1) {
            // Turn LED on in auto mode (battery status)
            setBrightness(LED_BRIGHTNESS);
            setLEDMode(true);
            #ifdef BATTERY
            extern float batteryVoltage;
            extern bool isUSBPowered;
            updateBatteryLED((uint16_t)batteryVoltage, isUSBPowered);
            #endif
          }
          return;
        }

        if (msg.size() >= 3) {
          uint8_t r = (uint8_t)msg.getInt(0);
          uint8_t g = (uint8_t)msg.getInt(1);
          uint8_t b = (uint8_t)msg.getInt(2);

          if (msg.size() >= 4) {
            uint8_t brightness = (uint8_t)msg.getInt(3);
            setBrightness(brightness);
          } else {
            setBrightness(LED_BRIGHTNESS);
          }

          setLED(r, g, b);
        }
      }
      #endif
    };

    // Heuristic: bundles start with "#bundle". Plain messages usually start with '/'.
    if (readLen >= 7 && buf[0] == '#') {
      OSCBundle bundleIN;
      for (int i = 0; i < readLen; i++) {
        bundleIN.fill(buf[i]);
      }

      if (bundleIN.hasError()) {
        return;
      }

      for (int i = 0; i < bundleIN.size(); i++) {
        OSCMessage *m = bundleIN.getOSCMessage(i);
        if (m) {
          handleMessage(*m);
        }
      }
    } else {
      OSCMessage msgIN;
      for (int i = 0; i < readLen; i++) {
        msgIN.fill(buf[i]);
      }

      if (msgIN.hasError()) {
        return;
      }

      handleMessage(msgIN);
    }
  }
}
