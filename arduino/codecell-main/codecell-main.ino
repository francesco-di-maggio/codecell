/*
 * CodeCell to OSC
 * Francesco Di Maggio, 2026
 *
 * Hardware: CodeCell (ESP32-C3 / ESP32-C6)
 * Visit: https://microbots.io/pages/learn-codecell#arduino-setup
 *
 * Libraries: CodeCell, OSC by Adrian Freed
 *
 * Setup: copy secrets.template.h to secrets.h and fill credentials
 *
 * OSC address pattern: /codecell/{INDEX}/{stream}
 *
 * Outgoing streams (feature-flag controlled):
 *   /codecell/1/quat     w x y z (float)
 *   /codecell/1/accel    x y z (float)
 *   /codecell/1/battery  voltage percentage power (int)
 *   /codecell/1/light    proximity ambient white (int)
 *   /codecell/1/button/1 state (int), one message per changed button
 *   /codecell/1/ping     (heartbeat, no args)
 *   /codecell/1/ip       "x.x.x.x"
 *   /codecell/1/uptime   seconds (int)
 *
 * Incoming commands:
 *   /reboot              restart device
 */

// =============================================================
// SETTINGS — edit this section to configure the firmware
// =============================================================

// -- Sketch info ----------------------------------------------
#define SKETCH   "CodeCell TO OSC"  // sketch name
#define VERSION  "0.1.0"            // firmware version
#define DATE     __DATE__           // build date

// -- OSC address ----------------------------------------------
#define INDEX    1                  // device index (e.g. /codecell/1/stream)
#define BASE     "/codecell"        // base path

// -- Feature flags (Sensors) ---------------------------------
// Comment out a flag to disable its stream.
#define ACCEL    // BNO085   — linear acceleration, world-frame (rotated in firmware via quaternion)
#define BATTERY  // voltage, level, power state
// #define BUTTON   // GPIO button inputs
#define LIGHT    // VCNL4040 — proximity, ambient, white
#define QUAT     // BNO085   — quaternion rotation (ARVR-stabilized, sign-continuous)

// -- Feature flags (Periodic) --------------------------------
#define IP       // device IP
#define PING     // heartbeat
#define UPTIME   // elapsed time since boot

// -- Pins & Hardware ------------------------------------------
// Button pins (to add more, separate with commas - e.g. {21, 22}.
// Check CodeCell pinout for available GPIOs: https://microbots.io/pages/learn-codecell#circuitry
#define BUTTON_PINS {21}     // GPIO pins for buttons)

// -- Rates (System) ------------------------------------------
#define RUN_RATE_HZ                 100  // How often sensor reads are performed

// -- Rates (Sensor Streams, Hz) ------
#define ACCEL_MAX_SEND_HZ            50
#define BATTERY_MAX_SEND_HZ           5
#define LIGHT_MAX_SEND_HZ            40
#define QUAT_MAX_SEND_HZ             50

// -- Rates (Periodic Timers, ms) ----
#define IP_RATE_MS                10000
#define PING_RATE_MS               1000
#define UPTIME_RATE_MS             1000

// -- Serial ---------------------------------------------------
// Time to wait for Serial connection on boot before proceeding.
#define SERIAL_WAIT_MS 1000
// Extra delay after Serial attach so host monitor is fully ready.
#define SERIAL_SETTLE_MS 500

// -- WiFi -----------------------------------------------------
#define WIFI_TIMEOUT_MS   20000   // hard deadline before reboot
#define WIFI_RETRY_MS       500   // poll interval during connect

// -- OSC ------------------------------------------------------
#define OSC_PACKET_MAX_SIZE 512  // Packets larger than this will be dropped

// -- Sensor Parameters ----------------------------------------

// ACCEL: Rotated to world-frame in firmware using the current quaternion.
#define ACCEL_CHANGE_THRESHOLD  0.05f   // m/s² per component
#define ACCEL_NOISE_DEADZONE    0.3f    // m/s² — zeroed below this at rest

// BATTERY: Minimum change in mV required to trigger a new OSC message.
#define BATTERY_CHANGE_THRESHOLD_MV 50

// LIGHT: EMA smoothing and per-channel thresholds.
#define LIGHT_EMA_ALPHA   0.4f  // 0.0 = no update, 1.0 = no smoothing
#define PROX_THRESHOLD    5
#define AMB_THRESHOLD     20
#define WHITE_THRESHOLD   30

// QUAT: Euclidean distance in quaternion space (same rotation = 0).
#define QUAT_CHANGE_THRESHOLD   0.01f

// =============================================================
// INCLUDES
// =============================================================
#include <CodeCell.h>
#include <WiFi.h>
#include <WiFiUdp.h>
#include <OSCBundle.h>
#include <OSCMessage.h>

#include "secrets.h" // WiFi credentials and target IP/ports

// =============================================================
// GLOBALS
// =============================================================
CodeCell myCell;
WiFiUDP  udpSend;
WiFiUDP  udpRecv;
IPAddress targetIP;

// Button tracking
#ifdef BUTTON
static const int buttonPins[] = BUTTON_PINS;
static const int numButtons = sizeof(buttonPins) / sizeof(buttonPins[0]);
static bool buttonStates[numButtons] = {false};
static bool buttonChanged[numButtons] = {false};
#endif

// =============================================================
// HELPERS
// =============================================================
static void oscAddr(char* buf, size_t len, const char* path) {
  snprintf(buf, len, "%s/%d/%s", BASE, INDEX, path);
}

// static void printIdentityBanner() {
//   Serial.printf("\n════════════════════════════════════════════\n");
//   Serial.printf("Code: %s\n", SKETCH);
//   Serial.printf("Version: v%s\n", VERSION);
//   Serial.printf("Build Date: %s\n", DATE);
//   Serial.printf("Base Path: %s\n", BASE);
//   Serial.printf("Device Index: %d\n", INDEX);
//   Serial.printf("Stream Rate: %d Hz\n", RUN_RATE_HZ);
//   Serial.printf("════════════════════════════════════════════");
// }

// =============================================================
// WIFI
// =============================================================
void wifiInit() {
  WiFi.mode(WIFI_STA);
  WiFi.setAutoReconnect(true);
  WiFi.begin(SECRET_SSID, SECRET_PASSWORD);

  Serial.printf("\n%-40s", "Connecting to WiFi...");
  unsigned long deadline = millis() + WIFI_TIMEOUT_MS;
  while (WiFi.status() != WL_CONNECTED && millis() < deadline) {
    delay(WIFI_RETRY_MS);
  }

  if (WiFi.status() != WL_CONNECTED) {
    Serial.println("[FAILED]");
    Serial.println("   Timeout: rebooting");
    delay(500);
    ESP.restart();
  }

  // Disable modem sleep to reduce UDP latency.
  // WiFi.setSleep(false);

  Serial.println("[OK]");
  Serial.printf("   SSID:         %s\n", SECRET_SSID);
  Serial.printf("   Assigned IP:  %s\n", WiFi.localIP().toString().c_str());
}

// =============================================================
// OSC COMMANDS
// =============================================================
static void oscDispatch(OSCMessage& msg) {
  if (msg.fullMatch("/reboot")) {
    Serial.flush();
    Serial.end();
    delay(100);
    ESP.restart();
  }
}

void oscReceive() {
  int size = udpRecv.parsePacket();
  if (size <= 0) return;

  if (size > OSC_PACKET_MAX_SIZE) {
    while (udpRecv.available()) udpRecv.read();
    return;
  }

  uint8_t buf[OSC_PACKET_MAX_SIZE];
  int len = udpRecv.read(buf, size);
  if (len <= 0) return;

  if (len >= 7 && buf[0] == '#') {
    OSCBundle bundleIn;
    bundleIn.fill(buf, len);
    if (!bundleIn.hasError()) {
      for (int i = 0; i < bundleIn.size(); i++) {
        OSCMessage* m = bundleIn.getOSCMessage(i);
        if (m) oscDispatch(*m);
      }
    }
  } else {
    OSCMessage msgIn;
    msgIn.fill(buf, len);
    if (!msgIn.hasError()) oscDispatch(msgIn);
  }
}

void oscInit() {
  targetIP.fromString(SECRET_IP);
  udpSend.begin(0);
  udpRecv.begin(SECRET_INPORT);
  Serial.printf("\n%-40s[OK]\n", "Initializing OSC...");
  Serial.printf("   Target IP:    %s\n", SECRET_IP);
  Serial.printf("   Send port:    %d\n", SECRET_OUTPORT);
  Serial.printf("   Receive port: %d\n", SECRET_INPORT);
}

void oscSend(OSCBundle& bundle) {
  udpSend.beginPacket(targetIP, SECRET_OUTPORT);
  bundle.send(udpSend);
  udpSend.endPacket();
  bundle.empty();
}

// =============================================================
// SENSOR: LIGHT
// Output: /codecell/{id}/light proximity ambient white
// =============================================================
#ifdef LIGHT
static float    proxSmoothed  = 0.0f;
static float    ambSmoothed   = 0.0f;
static float    whiteSmoothed = 0.0f;
static uint16_t prevProx      = 0;
static uint16_t prevAmb       = 0;
static uint16_t prevWhite     = 0;
static bool     lightReady    = false;  // skip change detection on first tick
static unsigned long lastLightSend = 0;

void lightStream(OSCBundle& bundle, unsigned long now) {
  if (now - lastLightSend < (1000 / LIGHT_MAX_SEND_HZ)) return;
  lastLightSend = now;

  uint16_t rawProx  = myCell.Light_ProximityRead();
  uint16_t rawAmb   = myCell.Light_AmbientRead();
  uint16_t rawWhite = myCell.Light_WhiteRead();

  if (!lightReady) {
    proxSmoothed  = rawProx;
    ambSmoothed   = rawAmb;
    whiteSmoothed = rawWhite;
    prevProx      = rawProx;
    prevAmb       = rawAmb;
    prevWhite     = rawWhite;
    lightReady    = true;
    return;
  }

  proxSmoothed  = LIGHT_EMA_ALPHA * rawProx  + (1.0f - LIGHT_EMA_ALPHA) * proxSmoothed;
  ambSmoothed   = LIGHT_EMA_ALPHA * rawAmb   + (1.0f - LIGHT_EMA_ALPHA) * ambSmoothed;
  whiteSmoothed = LIGHT_EMA_ALPHA * rawWhite + (1.0f - LIGHT_EMA_ALPHA) * whiteSmoothed;

  uint16_t prox  = (uint16_t)proxSmoothed;
  uint16_t amb   = (uint16_t)ambSmoothed;
  uint16_t white = (uint16_t)whiteSmoothed;

  bool changed = abs((int)prox  - (int)prevProx)  >= PROX_THRESHOLD
              || abs((int)amb   - (int)prevAmb)    >= AMB_THRESHOLD
              || abs((int)white - (int)prevWhite)  >= WHITE_THRESHOLD;

  if (!changed) return;

  prevProx  = prox;
  prevAmb   = amb;
  prevWhite = white;

  char addr[48];
  oscAddr(addr, sizeof(addr), "light");
  bundle.add(addr).add((int)prox).add((int)amb).add((int)white);
}
#endif // LIGHT

// =============================================================
// SENSOR: QUAT
// Output: /codecell/{id}/quat w x y z (ARVR-stabilized, sign-continuous)
// =============================================================
#ifdef QUAT
static float qw = 1.0f, qx = 0.0f, qy = 0.0f, qz = 0.0f;  // current sign-corrected quaternion, shared with accelStream
static float signW = 1.0f, signX = 0.0f, signY = 0.0f, signZ = 0.0f;  // continuity reference
static float prevQw = 1.0f, prevQx = 0.0f, prevQy = 0.0f, prevQz = 0.0f;  // change detection reference
static unsigned long lastQuatSend = 0;

void quatStream(OSCBundle& bundle, unsigned long now) {
  if (now - lastQuatSend < (1000 / QUAT_MAX_SEND_HZ)) return;

  float w, x, y, z;
  myCell.Motion_RotationVectorRead(w, x, y, z);

  float dot = w*signW + x*signX + y*signY + z*signZ;
  if (dot < 0.0f) { w = -w; x = -x; y = -y; z = -z; }
  signW = w; signX = x; signY = y; signZ = z;
  qw = w; qx = x; qy = y; qz = z;

  float dSq = (w-prevQw)*(w-prevQw) + (x-prevQx)*(x-prevQx)
            + (y-prevQy)*(y-prevQy) + (z-prevQz)*(z-prevQz);
  if (dSq < QUAT_CHANGE_THRESHOLD * QUAT_CHANGE_THRESHOLD) return;
  prevQw = w; prevQx = x; prevQy = y; prevQz = z;
  lastQuatSend = now;

  char addr[48];
  oscAddr(addr, sizeof(addr), "quat");
  bundle.add(addr).add(w).add(x).add(y).add(z);
}
#endif // QUAT

// =============================================================
// SENSOR: ACCEL
// Output: /codecell/{id}/accel x y z (world-frame, rotated by current quat)
// =============================================================
#ifdef ACCEL
static float prevAx = 0.0f, prevAy = 0.0f, prevAz = 0.0f;
static unsigned long lastAccelSend = 0;

void accelStream(OSCBundle& bundle, unsigned long now) {
  if (now - lastAccelSend < (1000 / ACCEL_MAX_SEND_HZ)) return;

  float bx, by, bz;
  myCell.Motion_LinearAccRead(bx, by, bz);

#ifdef QUAT
  float ax = (1.0f - 2.0f*(qy*qy + qz*qz)) * bx
           +         2.0f*(qx*qy - qw*qz)   * by
           +         2.0f*(qx*qz + qw*qy)   * bz;

  float ay =         2.0f*(qx*qy + qw*qz)   * bx
           + (1.0f - 2.0f*(qx*qx + qz*qz))  * by
           +         2.0f*(qy*qz - qw*qx)   * bz;

  float az =         2.0f*(qx*qz - qw*qy)   * bx
           +         2.0f*(qy*qz + qw*qx)   * by
           + (1.0f - 2.0f*(qx*qx + qy*qy))  * bz;
#else
  float ax = bx, ay = by, az = bz;
#endif

  if (fabsf(ax) < ACCEL_NOISE_DEADZONE) ax = 0.0f;
  if (fabsf(ay) < ACCEL_NOISE_DEADZONE) ay = 0.0f;
  if (fabsf(az) < ACCEL_NOISE_DEADZONE) az = 0.0f;

  if (fabsf(ax-prevAx) < ACCEL_CHANGE_THRESHOLD &&
      fabsf(ay-prevAy) < ACCEL_CHANGE_THRESHOLD &&
      fabsf(az-prevAz) < ACCEL_CHANGE_THRESHOLD) return;
  prevAx = ax; prevAy = ay; prevAz = az;
  lastAccelSend = now;

  char addr[48];
  oscAddr(addr, sizeof(addr), "accel");
  bundle.add(addr).add(ax).add(ay).add(az);
}
#endif // ACCEL

// =============================================================
// SENSOR: BATTERY
// Output: /codecell/{id}/battery voltage(mV) percentage powerState
// =============================================================
#ifdef BATTERY
static bool     batteryReady = false;
static uint16_t prevBatteryMV = 0;
static uint16_t prevBatteryPct = 0;
static uint16_t prevBatteryState = 0;
static unsigned long lastBatterySend = 0;

void batteryStream(OSCBundle& bundle, unsigned long now) {
  if (now - lastBatterySend < (1000 / BATTERY_MAX_SEND_HZ)) return;
  lastBatterySend = now;

  uint16_t voltageMV = myCell.BatteryVoltageRead();
  uint16_t percentage = myCell.BatteryLevelRead();
  uint16_t powerState = myCell.PowerStateRead();

  bool changed = !batteryReady ||
                 (abs((int)voltageMV - (int)prevBatteryMV) >= BATTERY_CHANGE_THRESHOLD_MV) ||
                 (percentage != prevBatteryPct) ||
                 (powerState != prevBatteryState);
  if (!changed) return;

  prevBatteryMV = voltageMV;
  prevBatteryPct = percentage;
  prevBatteryState = powerState;
  batteryReady = true;

  char addr[48];
  oscAddr(addr, sizeof(addr), "battery");
  bundle.add(addr)
        .add((int)voltageMV)
        .add((int)percentage)
        .add((int)powerState);
}
#endif // BATTERY

// =============================================================
// SENSOR: BUTTON
// Output: /codecell/{id}/button/{n} state (one message per changed button)
// =============================================================
#ifdef BUTTON
void buttonUpdate() {
  for (int i = 0; i < numButtons; i++) {
    bool raw = !myCell.pinRead(buttonPins[i]);  // INPUT_PULLUP: pressed = LOW = true
    if (raw != buttonStates[i]) {
      buttonStates[i] = raw;
      buttonChanged[i] = true;
    }
  }
}

void buttonStream(OSCBundle& bundle) {
  for (int i = 0; i < numButtons; i++) {
    if (buttonChanged[i]) {
      char addr[48];
      snprintf(addr, sizeof(addr), "%s/%d/button/%d", BASE, INDEX, i + 1);
      bundle.add(addr).add((int)buttonStates[i]);
      buttonChanged[i] = false;
    }
  }
}
#endif // BUTTON

// ============================================================
// PERIODIC MESSAGES
// Output: /codecell/{id}/ping (heartbeat)
// Output: /codecell/{id}/ip   "x.x.x.x"
// Output: /codecell/{id}/uptime seconds since boot
// =============================================================
#ifdef PING
void pingStream(OSCBundle& bundle, unsigned long now) {
  static unsigned long last = 0;
  if (now - last >= PING_RATE_MS) {
    last = now;
    char addr[48];
    oscAddr(addr, sizeof(addr), "ping");
    bundle.add(addr);
  }
}
#endif

#ifdef IP
void ipStream(OSCBundle& bundle, unsigned long now) {
  static unsigned long last = 0;
  if (now - last >= IP_RATE_MS) {
    last = now;
    char addr[48];
    oscAddr(addr, sizeof(addr), "ip");
    String ip = WiFi.localIP().toString();
    bundle.add(addr).add(ip.c_str());
  }
}
#endif

#ifdef UPTIME
void uptimeStream(OSCBundle& bundle, unsigned long now) {
  static unsigned long last = 0;
  if (now - last >= UPTIME_RATE_MS) {
    last = now;
    char addr[48];
    oscAddr(addr, sizeof(addr), "uptime");
    bundle.add(addr).add((int)(now / 1000));
  }
}
#endif

// =============================================================
// SETUP
// =============================================================
void setup() {
  delay(500);
  Serial.begin(115200);

  unsigned long start = millis();
  while (!Serial && (millis() - start) < SERIAL_WAIT_MS) {
    delay(20);
  }

  if (Serial) {
    delay(SERIAL_SETTLE_MS);
  }

  // printIdentityBanner();

  Serial.printf("\n════════════════════════════════════════════\n");
  Serial.printf("Initializing...\n");
  Serial.printf("════════════════════════════════════════════");

  // Build sensor bitmask for CodeCell Init().
  uint32_t sensors = 0;

#ifdef LIGHT
  sensors |= LIGHT;
#endif
#ifdef QUAT
  sensors |= MOTION_ROTATION;
#endif
#ifdef ACCEL
  sensors |= MOTION_ROTATION;
  sensors |= MOTION_LINEAR_ACC;
#endif

  if (sensors > 0) {
    myCell.Init(sensors);
  }

#ifdef BUTTON
  for (int i = 0; i < numButtons; i++) {
    pinMode(buttonPins[i], INPUT_PULLUP);
    buttonStates[i] = !myCell.pinRead(buttonPins[i]);
    buttonChanged[i] = true;
  }
#endif

  wifiInit();
  oscInit();

  Serial.printf("\n════════════════════════════════════════════\n");
  Serial.printf("System Ready\n");
  Serial.printf("════════════════════════════════════════════\n\n");
}

// =============================================================
// STREAM
// =============================================================
void streamSensors() {
  #ifdef BUTTON
  buttonUpdate();
  #endif

  if (WiFi.status() != WL_CONNECTED) return;

  unsigned long now = millis();
  OSCBundle bundle;

  // Sensors 
#ifdef ACCEL
  accelStream(bundle, now);
#endif
#ifdef BATTERY
  batteryStream(bundle, now);
#endif
#ifdef BUTTON
  buttonStream(bundle);
#endif
#ifdef LIGHT
  lightStream(bundle, now);
#endif
#ifdef QUAT
  quatStream(bundle, now);
#endif

  // Periodic
#ifdef IP
  ipStream(bundle, now);
#endif
#ifdef PING
  pingStream(bundle, now);
#endif
#ifdef UPTIME
  uptimeStream(bundle, now);
#endif

  if (bundle.size() > 0) oscSend(bundle);
}

// =============================================================
// LOOP
// =============================================================
void loop() {
  oscReceive();

  // Run library internals at RUN_RATE_HZ.
  if (myCell.Run(RUN_RATE_HZ)) {
    streamSensors();
  }
}
