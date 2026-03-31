/*
 * OSC Stream
 *
 * Reads sensor state via getters and sends an OSC bundle at STREAM_RATE_HZ.
 * Only includes messages whose data changed since the last transmission.
 * Periodic messages (ping, ip, uptime) are sent at their own rates.
 *
 * OSC address format: /codecell/{DEVICE_INDEX}/{sensor}
 *
 * Outgoing messages (enabled via feature flags in config.h):
 *   quat       — w x y z (float)
 *   accel      — x y z (float, m/s²)
 *   battery    — voltage(mV) percentage powerState (int)
 *   light      — proximity ambient white (int)
 *   button/{n} — state 0 or 1 (int), one message per changed button
 *   ping       — 1 (int), heartbeat at PING_RATE_MS
 *   ip         — IP address string, every IP_RATE_MS
 *   uptime     — seconds since boot (int), every UPTIME_RATE_MS
 */

#include "stream.h"
#include "config.h"
#include "wifi.h"
#include "osc.h"

#if defined(QUAT) || defined(ACCEL)
#include "imu.h"
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

#include <OSCBundle.h>

// ================================
// Periodic Message Timing
// ================================
#ifdef PING
static unsigned long lastPing   = 0;
#endif
#ifdef IP
static unsigned long lastIP     = 0;
#endif
#ifdef UPTIME
static unsigned long lastUptime = 0;
#endif

// ================================
// Address Helper
// ================================
static void buildAddress(char* buf, size_t len, const char* path) {
  snprintf(buf, len, "%s/%d/%s", BASE_ADDRESS, DEVICE_INDEX, path);
}

// ================================
// Bundle Builders
// ================================
static void addIMUMessages(OSCBundle& bundle) {
  char addr[OSC_ADDRESS_MAX_LEN];

  #ifdef QUAT
  if (imuQuaternionChanged()) {
    buildAddress(addr, sizeof(addr), "quat");
    float w, x, y, z;
    imuGetQuaternion(w, x, y, z);
    bundle.add(addr).add(w).add(x).add(y).add(z);
  }
  #endif

  #ifdef ACCEL
  if (imuAccelChanged()) {
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
      if (buttonChanged(i)) {
        char addr[OSC_ADDRESS_MAX_LEN];
        snprintf(addr, sizeof(addr), "%s/%d/button/%d", BASE_ADDRESS, DEVICE_INDEX, i + 1);
        bundle.add(addr).add((int)buttonGetState(i));
      }
    }
    buttonClearChanged();
  }
  #endif
}

static void addPeriodicMessages(OSCBundle& bundle, unsigned long now) {
  char addr[OSC_ADDRESS_MAX_LEN];

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

// ================================
// Public API
// ================================
void oscStream(unsigned long now) {
  if (!wifiIsConnected()) return;

  static unsigned long lastStream = 0;
  if (now - lastStream < (1000 / STREAM_RATE_HZ)) return;
  lastStream = now;

  OSCBundle bundle;
  addIMUMessages(bundle);
  addBatteryMessage(bundle);
  addLightMessage(bundle);
  addButtonMessages(bundle);
  addPeriodicMessages(bundle, now);

  if (bundle.size() > 0) oscSend(bundle);
}
