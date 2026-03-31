/*
 * OSC Protocol Driver
 *
 * UDP send/receive using the CNMAT OSCBundle library.
 * oscInit() reads target IP and ports from secrets.h.
 * oscReceive() parses incoming commands each loop.
 * oscSend(bundle) transmits a pre-built bundle to the target IP.
 *
 * OSC address format: /codecell/{DEVICE_INDEX}/{sensor}
 *
 * Incoming commands (point-to-point to device IP):
 *   /reboot        — restarts the device
 *   /led 0         — LED off
 *   /led 1         — LED back to automatic battery status
 *   /led r g b [b] — manual RGB, optional brightness (0-10)
 */

#include "osc.h"
#include "config.h"
#include "secrets.h"

#include "led.h"
#include <WiFiUdp.h>
#include <OSCBundle.h>

// ================================
// Private State
// ================================
static WiFiUDP   udpSend;
static WiFiUDP   udpReceive;
static IPAddress targetIP;
static uint16_t  targetPort;

// ================================
// Incoming Command Dispatch
// ================================
static void handleMessage(OSCMessage& msg) {
  if (msg.fullMatch("/reboot")) {
    Serial.println(">> Reboot command received");
    ESP.restart();
  }

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
      if (msg.size() >= 4) ledSetBrightness((uint8_t)msg.getInt(3));
      ledSet(r, g, b);
    }
  }
}

// ================================
// Public API
// ================================
void oscInit() {
  targetIP.fromString(SECRET_IP);
  targetPort = SECRET_OUTPORT;
  udpReceive.begin(SECRET_INPORT);

  Serial.printf("%-40s[OK]\n", "Initializing OSC...");
  Serial.printf("   Target IP:   %s\n", SECRET_IP);
  Serial.printf("   Send port:   %d\n", SECRET_OUTPORT);
  Serial.printf("   Recv port:   %d\n", SECRET_INPORT);
}

void oscReceive() {
  int size = udpReceive.parsePacket();
  if (size <= 0) return;

  // Drop oversized packets
  if (size > OSC_PACKET_MAX_SIZE) {
    while (udpReceive.available()) udpReceive.read();
    return;
  }

  uint8_t buf[OSC_PACKET_MAX_SIZE];
  int readLen = udpReceive.read(buf, size);
  if (readLen <= 0) return;

  // Dispatch bundle or single message
  if (readLen >= 7 && buf[0] == '#') {
    OSCBundle bundleIN;
    bundleIN.fill(buf, readLen);
    if (!bundleIN.hasError()) {
      for (int i = 0; i < bundleIN.size(); i++) {
        OSCMessage* m = bundleIN.getOSCMessage(i);
        if (m) handleMessage(*m);
      }
    }
  } else {
    OSCMessage msgIN;
    msgIN.fill(buf, readLen);
    if (!msgIN.hasError()) handleMessage(msgIN);
  }
}

void oscSend(OSCBundle& bundle) {
  udpSend.beginPacket(targetIP, targetPort);
  bundle.send(udpSend);
  udpSend.endPacket();
  bundle.empty();
}
