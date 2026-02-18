/*
 * OSC Protocol
 *
 * UDP send/receive using the CNMAT OSCBundle library.
 * One bundle is sent per STREAM_RATE_HZ tick, containing only messages
 * whose sensor data changed since the last transmission.
 *
 * OSC address format: /codecell/{DEVICE_INDEX}/{sensor}
 *
 * Outgoing sensors (enabled via feature flags in config.h):
 *   quat    — w x y z (float)
 *   euler   — roll pitch yaw (float, degrees)
 *   accel   — x y z (float, m/s²)
 *   battery — voltage(mV) percentage powerState (int)
 *   light   — proximity ambient white (int)
 *   button/{n} — state 0 or 1 (int), one message per button
 *   ping    — 1 (int), 1 Hz heartbeat
 *   ip      — IP address string, every 10s
 *   uptime  — seconds since boot (int), 1 Hz
 *
 * Incoming commands (point-to-point to device IP — no namespace prefix needed):
 *   /reboot        — restarts the device
 *   /led 0         — LED off
 *   /led 1         — LED back to automatic battery status
 *   /led r g b [b] — manual RGB, optional brightness (0-10)
 */

// Local headers first (Adafruit standard)
#include "osc.h"
#include "config.h"
#include "wifi.h"

#if defined(QUAT) || defined(EULER) || defined(ACCEL)
#include "imu.h"
#endif

#ifdef BATTERY
#include "battery.h"
#endif

#ifdef LED
#include "led.h"
#endif

#ifdef LIGHT
#include "light.h"
#endif

#ifdef BUTTON
#include "button.h"
#endif

// System libraries last
#include <WiFiUdp.h>
#include <OSCBundle.h>

// ================================
// Private State
// ================================
static WiFiUDP udpSend;
static WiFiUDP udpReceive;
static IPAddress targetIP;
static uint16_t targetPort;

// Periodic message timing
#ifdef PING
static unsigned long lastPing = 0;
#endif
#ifdef IP
static unsigned long lastIP = 0;
#endif
#ifdef UPTIME
static unsigned long lastUptime = 0;
#endif

// ================================
// Helper Functions
// ================================
static void buildAddress(char* buffer, size_t bufferSize, const char* path) {
  snprintf(buffer, bufferSize, "%s/%d/%s", BASE_ADDRESS, DEVICE_INDEX, path);
}

static void addQuaternionMessage(OSCBundle& bundle) {
  #ifdef QUAT
  if (imuQuaternionChanged()) {
    char addr[OSC_ADDRESS_MAX_LEN];
    buildAddress(addr, sizeof(addr), "quat");
    float w, x, y, z;
    imuGetQuaternion(w, x, y, z);
    bundle.add(addr).add(w).add(x).add(y).add(z);
  }
  #endif
}

static void addEulerMessage(OSCBundle& bundle) {
  #ifdef EULER
  if (imuEulerChanged()) {
    char addr[OSC_ADDRESS_MAX_LEN];
    buildAddress(addr, sizeof(addr), "euler");
    EulerAngles angles;
    imuGetEuler(angles);
    bundle.add(addr).add(angles.roll).add(angles.pitch).add(angles.yaw);
  }
  #endif
}

static void addAccelMessage(OSCBundle& bundle) {
  #ifdef ACCEL
  if (imuAccelChanged()) {
    char addr[OSC_ADDRESS_MAX_LEN];
    buildAddress(addr, sizeof(addr), "accel");
    float x, y, z;
    imuGetAccel(x, y, z);
    bundle.add(addr).add(x).add(y).add(z);
  }
  #endif
}

static void addBatteryMessage(OSCBundle& bundle) {
  #ifdef BATTERY
  if (batteryHasChanged()) {
    char addr[OSC_ADDRESS_MAX_LEN];
    buildAddress(addr, sizeof(addr), "battery");
    bundle.add(addr)
          .add((int)batteryGetVoltage())
          .add((int)batteryGetPercentage())
          .add((int)batteryGetPowerState());
  }
  #endif
}

static void addLightMessage(OSCBundle& bundle) {
  #ifdef LIGHT
  if (lightHasChanged()) {
    char addr[OSC_ADDRESS_MAX_LEN];
    buildAddress(addr, sizeof(addr), "light");
    bundle.add(addr)
          .add((int)lightGetProximity())
          .add((int)lightGetAmbient())
          .add((int)lightGetWhite());
  }
  #endif
}

static void addButtonMessages(OSCBundle& bundle) {
  #ifdef BUTTON
  if (buttonHasChanged()) {
    for (int i = 0; i < buttonCount(); i++) {
      char addr[OSC_ADDRESS_MAX_LEN];
      snprintf(addr, sizeof(addr), "%s/%d/button/%d", BASE_ADDRESS, DEVICE_INDEX, i + 1);
      bundle.add(addr).add((int)buttonGetState(i));
    }
  }
  #endif
}

static void addPeriodicMessages(OSCBundle& bundle) {
  char addr[OSC_ADDRESS_MAX_LEN];
  unsigned long now = millis();  // Single timestamp for all checks this cycle

  #ifdef PING
  if (now - lastPing >= PING_RATE_MS) {
    buildAddress(addr, sizeof(addr), "ping");
    bundle.add(addr).add(1);
    lastPing = now;
  }
  #endif

  #ifdef IP
  if (now - lastIP >= IP_RATE_MS) {
    buildAddress(addr, sizeof(addr), "ip");
    String ipStr = wifiGetIP();
    bundle.add(addr).add(ipStr.c_str());
    lastIP = now;
  }
  #endif

  #ifdef UPTIME
  if (now - lastUptime >= UPTIME_RATE_MS) {
    buildAddress(addr, sizeof(addr), "uptime");
    bundle.add(addr).add((int)(now / 1000));
    lastUptime = now;
  }
  #endif
}

static void handleOSCMessage(OSCMessage& msg) {
  // Incoming commands use short addresses — no namespace prefix needed.
  // Commands are sent point-to-point to a specific device IP,
  // so /codecell/{id}/ disambiguation is not required.
  if (msg.fullMatch("/reboot")) {
    Serial.println(">> Received reboot command");
    ESP.restart();
  }

  #ifdef LED
  if (msg.fullMatch("/led")) {
    if (msg.size() == 1) {
      int value = msg.getInt(0);
      if (value == 0) {
        ledSetBrightness(0);
        ledSet(0, 0, 0);
      } else {
        ledSetBrightness(LED_BRIGHTNESS);
        ledSetAutomatic(true);
        ledUpdate();
      }
    } else if (msg.size() >= 3) {
      uint8_t r = (uint8_t)msg.getInt(0);
      uint8_t g = (uint8_t)msg.getInt(1);
      uint8_t b = (uint8_t)msg.getInt(2);
      if (msg.size() >= 4) {
        ledSetBrightness((uint8_t)msg.getInt(3));
      }
      ledSet(r, g, b);
    }
  }
  #endif
}

// ================================
// Public API
// ================================
bool oscInit(const char* remoteIp, uint16_t remotePort, uint16_t localPort) {
  if (!wifiIsConnected()) {
    Serial.println("WiFi not connected!");
    return false;
  }

  targetIP.fromString(remoteIp);
  targetPort = remotePort;

  Serial.printf("   Sending OSC to %s:%d\n", remoteIp, remotePort);
  Serial.printf("   Listening on port %d\n", localPort);
  
  udpReceive.begin(localPort);
  
  return true;
}

void oscUpdate() {
  int size = udpReceive.parsePacket();
  if (size <= 0) return;
  
  // Read packet
  if (size > OSC_PACKET_MAX_SIZE) {
    while (udpReceive.available()) udpReceive.read();
    return;
  }
  
  uint8_t buf[OSC_PACKET_MAX_SIZE];
  int readLen = udpReceive.read(buf, size);
  if (readLen <= 0) return;
  
  // Check if bundle or single message
  if (readLen >= 7 && buf[0] == '#') {
    // OSC Bundle
    OSCBundle bundleIN;
    for (int i = 0; i < readLen; i++) {
      bundleIN.fill(buf[i]);
    }
    
    if (!bundleIN.hasError()) {
      for (int i = 0; i < bundleIN.size(); i++) {
        OSCMessage* m = bundleIN.getOSCMessage(i);
        if (m) handleOSCMessage(*m);
      }
    }
  } else {
    // Single OSC Message
    OSCMessage msgIN;
    for (int i = 0; i < readLen; i++) {
      msgIN.fill(buf[i]);
    }
    
    if (!msgIN.hasError()) {
      handleOSCMessage(msgIN);
    }
  }
}

void oscSendAll() {
  OSCBundle bundle;
  
  // Add all sensor messages (uses helper functions)
  addQuaternionMessage(bundle);
  addEulerMessage(bundle);
  addAccelMessage(bundle);
  addBatteryMessage(bundle);
  addLightMessage(bundle);
  addButtonMessages(bundle);
  addPeriodicMessages(bundle);
  
  // Only send if at least one message was added
  if (bundle.size() > 0) {
    udpSend.beginPacket(targetIP, targetPort);
    bundle.send(udpSend);
    udpSend.endPacket();
    bundle.empty();
  }
}
