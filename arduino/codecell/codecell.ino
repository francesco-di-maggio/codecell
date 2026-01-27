/*
 * CodeCell - Real-time sensor streaming
 * Quaternions, acceleration, battery, buttons
 * 
 * Hardware: ESP32-C3 + BNO085 9-DOF IMU (CodeCell board)
 * Repository: https://github.com/francesco-di-maggio/codecell
 * Protocol: OSC over WiFi (MIDI, BLE, Serial support planned)
 * 
 * Configure secrets.h for network settings
 */

#include <WiFi.h>
#include <WiFiUdp.h>
#include <OSCBundle.h>
#include <CodeCell.h>

// ================================
// NETWORK CONFIGURATION
// Note: Copy arduino/secrets.template.h to arduino/secrets.h and configure your WiFi/OSC settings
#include "../secrets.h"

// ================================
// VERSION INFORMATION
// ================================
const char* FIRMWARE_VERSION = "1.1.3";
const char* BUILD_DATE = "2026-01-27";
const char* AUTHOR = "Francesco Di Maggio";

// ================================
// SENSORS - Enable/Disable
// ================================
#define QUAT                    // Quaternion rotation data (qw, qx, qy, qz)
#define ACCEL                   // Linear acceleration (x, y, z)
#define BATTERY                 // Battery voltage and power state
#define LIGHTS                  // Light sensors (proximity, white, ambient)
// #define BUTTONS                 // Button inputs

// ================================
// OUTPUT PROTOCOLS - Enable/Disable
// ================================
#define IP                      // IP address announcement
#define OSC                     // OSC over UDP WiFi
#define PING                    // Periodic ping message (heartbeat)
#define UPTIME                  // Uptime reporting (elapsed time since boot)

// ================================
// SYSTEM CONFIGURATION
// ================================
const int DEVICE_INDEX = 1;                    // Device ID for OSC addressing
const char* BASE_ADDRESS = "/codecell";        // OSC base address
const int SENSOR_RATE_HZ = 50;                 // Sensor reading rate (Hz)
const int LED_BRIGHTNESS = 10;                  // LED brightness (0=off, 10=full) - set to 0 to save battery

// ================================
// NETWORK CONFIGURATION
// ================================
const IPAddress targetIP(SECRET_IP);           // Target IP from secrets.h
const int udpSendPort = SECRET_OUTPORT;        // UDP send port from secrets.h
const int udpReceivePort = SECRET_INPORT;      // UDP receive port from secrets.h

// ================================
// FUNCTION DECLARATIONS
// ================================
void initWiFi();
void initSensors();
void readSensors();
void sendSensors();
void receiveCommands();
void rebootDevice();

#ifdef OSC
void sendOSC();
void receiveOSC();
#endif
#ifdef QUAT
bool readQuat();
#endif
#ifdef ACCEL
bool readAccel();
#endif
#ifdef BATTERY
bool readBattery();
#endif
#ifdef BUTTONS
bool readButtons();
#endif
#ifdef LIGHTS
bool readLight();
#endif
#ifdef PING
bool readPing();
#endif
#ifdef UPTIME
bool readUptime();
#endif
#ifdef IP
bool readIP();
#endif

// ================================
// GLOBAL OBJECTS & VARIABLES
// ================================
WiFiUDP udpSend;                                // UDP for sending OSC
WiFiUDP udpReceive;                             // UDP for receiving OSC
CodeCell myCodeCell;

// ================================
// SENSOR CONFIGURATION & DATA
// ================================
#ifdef QUAT
const float QUAT_CHANGE_THRESHOLD = 0.02f;     // Quaternion change detection threshold (smooth motion vs drift balance)
float qw = 1.0, qx = 0.0, qy = 0.0, qz = 0.0;  // Quaternion components (w, x, y, z)
bool quat = false;                             // Change detection flag
#endif

#ifdef ACCEL  
const float ACCEL_CHANGE_THRESHOLD = 0.1f;     // Acceleration change detection (m/s²)
const float ACCEL_NOISE_DEADZONE = 0.5f;       // Noise floor for idle filtering (m/s²)
float x = 0.0, y = 0.0, z = 0.0;               // Linear acceleration (m/s²)
bool accel = false;                            // Change detection flag
#endif

#ifdef BATTERY
const uint16_t BATTERY_VOLTAGE_CHANGE_MV = 100; // Voltage change threshold (mV)
const float BATTERY_VOLTAGE_SMOOTHING = 0.25f;  // Smoothing factor (0.0=none, 1.0=max, typical 0.1-0.5)

// Battery data variables
uint16_t voltage = 0;                         // Battery voltage (mV)
uint8_t power = 0;                            // Power state (0=Battery, 1=USB, 2=Init, 3=Low, 4=Charged, 5=Charging)
bool battery = false;                         // Change detection flag
#endif

#ifdef BUTTONS
const int BUTTON_PINS[] = {5, 6};
const int NUM_BUTTONS = sizeof(BUTTON_PINS) / sizeof(BUTTON_PINS[0]);

bool button_state[NUM_BUTTONS] = {false};     // Current state of each button
bool buttons = false;                         // Change detection flag
#endif

#ifdef LIGHTS
const uint16_t LIGHT_CHANGE_THRESHOLD = 10;   // Light sensor change threshold
uint16_t proximity = 0;                       // Proximity reading
uint16_t white = 0;                           // White light reading
uint16_t ambient = 0;                         // Ambient light reading
bool light = false;                           // Change detection flag
#endif

#ifdef PING
const int PING_RATE_MS = 1000;                 // Ping message interval (ms)
bool ping = false;                             // Send flag
#endif

#ifdef IP
const int IP_RATE_MS = 10000;                  // IP announcement interval (ms)
bool ip = false;                               // Send flag
#endif

#ifdef UPTIME
const int UPTIME_RATE_MS = 1000;               // Uptime report interval (ms)
unsigned long elapsed = 0;                     // Elapsed time since boot (seconds)
bool uptime = false;                           // Send flag
#endif

// ================================
// SETUP - Initialize system
// ================================  
void setup() {
  Serial.begin(115200);
  
  Serial.printf("\n================================\n");
  Serial.printf("CodeCell v%s\n", FIRMWARE_VERSION);
  Serial.printf("Build Date: %s\n", BUILD_DATE);
  Serial.printf("Author: %s\n", AUTHOR);
  Serial.printf("================================\n");

  Serial.printf("\nInitializing system...\n\n");

  initWiFi();
  initSensors();

  myCodeCell.LED_SetBrightness(LED_BRIGHTNESS);

  Serial.printf("\nSystem ready!\n");
  Serial.printf("\n================================\n\n");
}

// ================================
// MAIN LOOP - Read sensors & stream data
// ================================
void loop() {
  receiveCommands();
  
  if (myCodeCell.Run(SENSOR_RATE_HZ)) {
    readSensors();
  }
  
  sendSensors();
  
  delay(1);  // Yield to WiFi stack, prevent watchdog issues
}

// ================================
// WIFI FUNCTIONS
// ================================
void initWiFi() {
  Serial.printf("Connecting to %s", SECRET_SSID);
  WiFi.begin(SECRET_SSID, SECRET_PASSWORD);
  
  // Wait for connection with configurable timeout
  unsigned long startTime = millis();
  while (WiFi.status() != WL_CONNECTED && millis() - startTime < 20000) {
    delay(500);
    Serial.printf(".");
  }

  if (WiFi.status() == WL_CONNECTED) {
    WiFi.setSleep(false);  // Disable WiFi modem sleep to prevent I2C interference
    
    Serial.printf("\n\n> CONNECTED!\n");
    Serial.printf("> %s\n\n", WiFi.localIP().toString().c_str());
    Serial.printf("IP Address: %s\n", SECRET_IP);
    Serial.printf("> OSC Port: %d\n", udpSendPort);
    Serial.printf("> OSC Path: %s/%d", BASE_ADDRESS, DEVICE_INDEX);
    
    udpSend.begin(0);
    udpReceive.begin(udpReceivePort);
    Serial.printf("\n> OSC listening on port %d\n", udpReceivePort);
    
    return;
  }
  
  Serial.printf("\n\n> FAILED!\n\n");
  Serial.printf("Please check WiFi credentials and network, then restart device.\n");
  Serial.printf("System halted - power cycle to retry.\n");
  
  // Halt system - standby until WiFi connection is fixed
  while(1) {
    delay(5000);
  }
}

// ================================
// SENSOR INITIALIZATION
// ================================
void initSensors() {
  int sensors = 0;
  
  // Add quaternion rotation sensor
  #ifdef QUAT
  sensors += MOTION_ROTATION;
  #endif
  
  // Add linear acceleration sensor
  #ifdef ACCEL
  sensors += MOTION_LINEAR_ACC;
  #endif
  
  // Add light sensors
  #ifdef LIGHTS
  sensors += LIGHT;
  #endif
  
  // Initialize sensors
  if (sensors > 0) {
    myCodeCell.Init(sensors);
  }
  
  #ifdef BUTTONS
  // Initialize buttons
  for (int i = 0; i < NUM_BUTTONS; i++) {
    pinMode(BUTTON_PINS[i], INPUT_PULLUP);
    button_state[i] = false;
  }
  #endif
}

// ================================
// SENSOR READING
// ================================
void readSensors() {
  #ifdef QUAT
  quat = readQuat();
  #endif
  
  #ifdef ACCEL
  accel = readAccel();
  #endif
  
  #ifdef BATTERY
  battery = readBattery();
  #endif
  
  #ifdef BUTTONS
  buttons = readButtons();
  #endif
  
  #ifdef LIGHTS
  light = readLight();
  #endif
  
  // Timed messages (have their own intervals)
  #ifdef PING
  ping = readPing();
  #endif
  
  #ifdef UPTIME
  uptime = readUptime();
  #endif
  
  #ifdef IP
  ip = readIP();
  #endif
}

void sendSensors() {
  // Send via OSC protocol
  #ifdef OSC
  sendOSC();
  #endif
}

void receiveCommands() {
  // Receive via OSC protocol
  #ifdef OSC
  receiveOSC();
  #endif
}

#ifdef OSC
void sendOSC() {
  OSCBundle bundle;
  char address[64];
  bool has_data = false;
  
  #ifdef QUAT
  if (quat) {
    snprintf(address, sizeof(address), "%s/%d/quat", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(qw).add(qx).add(qy).add(qz);
    has_data = true;
    quat = false;
  }
  #endif
  
  #ifdef ACCEL
  if (accel) {
    snprintf(address, sizeof(address), "%s/%d/accel", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(x).add(y).add(z);
    has_data = true;
    accel = false;
  }
  #endif
  
  #ifdef BATTERY
  if (battery) {
    snprintf(address, sizeof(address), "%s/%d/power", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(power);
    
    snprintf(address, sizeof(address), "%s/%d/voltage", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(voltage / 1000.0f);
    has_data = true;
    battery = false;
  }
  #endif
  
  #ifdef BUTTONS
  if (buttons) {
    for (int i = 0; i < NUM_BUTTONS; i++) {
      snprintf(address, sizeof(address), "%s/%d/button/%d", BASE_ADDRESS, DEVICE_INDEX, i + 1);
      bundle.add(address).add(button_state[i]);
    }
    has_data = true;
    buttons = false;
  }
  #endif
  
  #ifdef LIGHTS
  if (light) {
    snprintf(address, sizeof(address), "%s/%d/light", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(proximity).add(white).add(ambient);
    has_data = true;
    light = false;
  }
  #endif
  
  #ifdef PING
  if (ping) {
    snprintf(address, sizeof(address), "%s/%d/ping", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(1);
    has_data = true;
    ping = false;
  }
  #endif
  
  #ifdef UPTIME
  if (uptime) {
    snprintf(address, sizeof(address), "%s/%d/elapsed", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add((int)elapsed);
    has_data = true;
    uptime = false;
  }
  #endif
  
  #ifdef IP
  if (ip) {
    snprintf(address, sizeof(address), "%s/%d/ip", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(WiFi.localIP().toString().c_str());
    has_data = true;
    ip = false;
  }
  #endif
  
  if (has_data) {
    udpSend.beginPacket(targetIP, udpSendPort);
    bundle.send(udpSend);
    udpSend.endPacket();
    bundle.empty();
  }
}

void receiveOSC() {
  int packetSize = udpReceive.parsePacket();
  if (packetSize > 0) {
    OSCBundle bundleIn;
    while (packetSize--) {
      bundleIn.fill(udpReceive.read());
    }
    
    if (!bundleIn.hasError()) {
      // Dispatch incoming OSC messages to handlers
      bundleIn.dispatch("/reboot", handleReboot);
    }
  }
}

void handleReboot(OSCMessage &msg) {
  rebootDevice();
}
#endif

// ================================
// SYSTEM FUNCTIONS
// ================================
void rebootDevice() {
  Serial.println("Rebooting device...");
  delay(100);
  ESP.restart();
}

// ================================
// SENSOR FUNCTIONS
// ================================

// ================================
// QUATERNION READING
// ================================
#ifdef QUAT
bool readQuat() {
  // Read quaternion from sensor
  myCodeCell.Motion_RotationVectorRead(qw, qx, qy, qz);
  
  // Sign continuity reference (updated every frame)
  static float qw_sign = 1.0f, qx_sign = 0.0f, qy_sign = 0.0f, qz_sign = 0.0f;
  
  // Change detection reference (updated only when sending)
  static float qw_last_sent = 1.0f, qx_last_sent = 0.0f, qy_last_sent = 0.0f, qz_last_sent = 0.0f;

  // Apply sign continuity: flip sign if dot product is negative
  // This prevents jumps between q and -q (which represent the same rotation)
  float dot = qw*qw_sign + qx*qx_sign + qy*qy_sign + qz*qz_sign;
  
  if (dot < 0.0f) {
    qw = -qw; qx = -qx; qy = -qy; qz = -qz;
  }
  
  // Update sign reference for next frame
  qw_sign = qw; qx_sign = qx; qy_sign = qy; qz_sign = qz;
  
  // Compute Euclidean distance in quaternion space
  float dist_sq = (qw - qw_last_sent) * (qw - qw_last_sent) +
                  (qx - qx_last_sent) * (qx - qx_last_sent) +
                  (qy - qy_last_sent) * (qy - qy_last_sent) +
                  (qz - qz_last_sent) * (qz - qz_last_sent);
  
  if (dist_sq > QUAT_CHANGE_THRESHOLD * QUAT_CHANGE_THRESHOLD) {
    qw_last_sent = qw; qx_last_sent = qx; qy_last_sent = qy; qz_last_sent = qz;
    return true;   // Changed - should transmit
  }
  
  return false;    // No change - skip transmission
}
#endif

// ================================
// ACCELERATION READING
// ================================
#ifdef ACCEL
bool readAccel() {
  // Read raw acceleration data
  myCodeCell.Motion_LinearAccRead(x, y, z);
  
  // Apply deadzone to eliminate sensor noise when idle
  x = (abs(x) < ACCEL_NOISE_DEADZONE) ? 0.0f : x;
  y = (abs(y) < ACCEL_NOISE_DEADZONE) ? 0.0f : y;
  z = (abs(z) < ACCEL_NOISE_DEADZONE) ? 0.0f : z;
  
  // Change detection with component-wise threshold
  static float x_last_sent = 0.0f, y_last_sent = 0.0f, z_last_sent = 0.0f;
  
  if (abs(x - x_last_sent) > ACCEL_CHANGE_THRESHOLD ||
      abs(y - y_last_sent) > ACCEL_CHANGE_THRESHOLD ||
      abs(z - z_last_sent) > ACCEL_CHANGE_THRESHOLD) {
    x_last_sent = x; y_last_sent = y; z_last_sent = z;
    return true;  // Changed - should transmit
  }
  
  return false;  // No change - skip transmission
}
#endif

// ================================
// BATTERY READING
// ================================
#ifdef BATTERY
bool readBattery() {
  static uint8_t power_last_sent = 0xFF;
  static uint16_t voltage_last_sent = 0;
  static uint16_t voltage_smoothed = 0;

  power = myCodeCell.PowerStateRead();
  uint16_t v = myCodeCell.BatteryVoltageRead();
  
  if (voltage_smoothed == 0) {
    voltage_smoothed = v;
  } else {
    voltage_smoothed = voltage_smoothed * (1.0f - BATTERY_VOLTAGE_SMOOTHING) + v * BATTERY_VOLTAGE_SMOOTHING;
  }
  voltage = voltage_smoothed;

  if (power != power_last_sent) {
    power_last_sent = power;
    return true;
  }
  
  if (abs((int)voltage - (int)voltage_last_sent) >= BATTERY_VOLTAGE_CHANGE_MV) {
    voltage_last_sent = voltage;
    return true;
  }

  return false;
}
#endif

// ================================
// LIGHT SENSORS READING
// ================================
#ifdef LIGHTS
bool readLight() {
  static uint16_t proximity_last_sent = 0;
  static uint16_t white_last_sent = 0;
  static uint16_t ambient_last_sent = 0;
  
  proximity = myCodeCell.Light_ProximityRead();
  white = myCodeCell.Light_WhiteRead();
  ambient = myCodeCell.Light_AmbientRead();
  
  if (abs((int)proximity - (int)proximity_last_sent) >= LIGHT_CHANGE_THRESHOLD ||
      abs((int)white - (int)white_last_sent) >= LIGHT_CHANGE_THRESHOLD ||
      abs((int)ambient - (int)ambient_last_sent) >= LIGHT_CHANGE_THRESHOLD) {
    proximity_last_sent = proximity;
    white_last_sent = white;
    ambient_last_sent = ambient;
    return true;  // Changed - should transmit
  }
  
  return false;  // No change - skip transmission
}
#endif

// ================================
// BUTTON READING
// ================================
#ifdef BUTTONS
bool readButtons() {
  // Change detection
  static bool button_last_sent[NUM_BUTTONS] = {false};
  
  // Use pinRead() function for direct pin access
  for (int i = 0; i < NUM_BUTTONS; i++) {
    bool input = !myCodeCell.pinRead(BUTTON_PINS[i]);  // Active low (INPUT_PULLUP), so invert
    button_state[i] = input;
    
    if (button_state[i] != button_last_sent[i]) {
      button_last_sent[i] = button_state[i];
      return true;  // Changed - should transmit
    }
  }
  
  return false;  // No change - skip transmission
}
#endif

// ================================
// PING READING
// ================================
#ifdef PING
bool readPing() {
  static unsigned long last_ping = 0;
  unsigned long now = millis();
  
  if (now - last_ping >= PING_RATE_MS) {
    last_ping = now;
    return true;
  }
  
  return false;
}
#endif

// ================================
// UPTIME READING
// ================================
#ifdef UPTIME
bool readUptime() {
  static unsigned long last_uptime = 0;
  unsigned long now = millis();
  
  if (now - last_uptime >= UPTIME_RATE_MS) {
    elapsed = now / 1000;
    last_uptime = now;
    return true;
  }
  
  return false;
}
#endif

// ================================
// IP READING
// ================================
#ifdef IP
bool readIP() {
  static unsigned long last_ip = 0;
  unsigned long now = millis();
  
  if (now - last_ip >= IP_RATE_MS) {
    last_ip = now;
    return true;
  }
  
  return false;
}
#endif