/*
 * CodeCell - Real-time sensor streaming via OSC/UDP
 * Quaternions, acceleration, battery, buttons → OSC over WiFi
 * 
 * Hardware: ESP32-C3 + BNO085 9-DOF IMU (CodeCell board)
 * Repository: https://github.com/francesco-di-maggio/codecell
 * 
 * Configure secrets.h for network settings
 */

#include <WiFi.h>
#include <WiFiUdp.h>
#include <OSCBundle.h>
#include <CodeCell.h>

// ================================
#include "secrets.h" // Note: Configure your network settings here!

// ================================
// VERSION INFORMATION
// ================================
const char* FIRMWARE_VERSION = "1.1.0";
const char* BUILD_DATE = "2025-10-18";
const char* AUTHOR = "Francesco Di Maggio";

// ================================
// SENSORS - Enable/Disable
// ================================
#define QUAT                    // Quaternion rotation data (qw, qx, qy, qz)
#define ACCEL                   // Linear acceleration (x, y, z)
#define BATTERY                 // Battery level, voltage, power state (and runtime estimate)
#define BUTTONS                 // Button inputs

// ================================
// OUTPUT PROTOCOLS - Enable/Disable
// ================================
#define OSC                     // OSC over UDP WiFi

// ================================
// SYSTEM CONFIGURATION
// ================================
const int DEVICE_INDEX = 1;                    // Device ID for OSC addressing
const char* BASE_ADDRESS = "/codecell";        // OSC base address
const int SENSOR_RATE_HZ = 50;                 // Sensor reading rate (Hz)
const int SENDER_RATE_HZ = 50;                 // Network transmission rate (Hz)

// ================================
// TIMING INTERVALS (milliseconds)  
// ================================
// All sensor timing controlled by myCodeCell.Run() frequency

// ================================
// NETWORK CONFIGURATION
// ================================
const IPAddress targetIP(SECRET_IP);           // Target IP from secrets.h
const int udpPort = SECRET_OUTPORT;            // UDP port from secrets.h

// ================================
// FUNCTION DECLARATIONS
// ================================
void initSensors();
void connectWiFi();
void readSensors();
void sendSensors();

#ifdef OSC
void sendOSC();
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

// ================================
// GLOBAL OBJECTS & VARIABLES
// ================================
WiFiUDP udp;
CodeCell myCodeCell;

// ================================
// SENSOR CONFIGURATION & DATA
// ================================
#ifdef QUAT
const float QUAT_CHANGE_THRESHOLD = 0.02f;     // Quaternion change detection threshold (smooth motion vs drift balance)
float qw = 0.0, qx = 0.0, qy = 0.0, qz = 0.0;  // Quaternion components (w, x, y, z)
bool quat_changed = false;                     // Change detection cache
#endif

#ifdef ACCEL  
const float ACCEL_CHANGE_THRESHOLD = 0.1f;     // Acceleration change detection (m/s²)
const float ACCEL_NOISE_DEADZONE = 0.75f;      // Noise floor for idle filtering (m/s²)
float x = 0.0, y = 0.0, z = 0.0;               // Linear acceleration (m/s²)
bool accel_changed = false;                    // Change detection cache
#endif

#ifdef BATTERY
// Battery specifications (change to match your battery!)
const int BATTERY_CAPACITY_MAH = 150;          // LiPo battery capacity in mAh

/* POWER CONSUMPTION ANALYSIS (variable rates):
 * Base System Components:
 * - ESP32-C3 WiFi active: ~90mA
 * - BNO085 IMU sensor: ~12mA  
 * - CodeCell board overhead: ~8mA
 * - Peripherals & safety margin: ~10mA
 * - Processing overhead: Variable based on rate
 * 
 * Rate-Specific Calculations:
 * - 20Hz: ~8mA processing (20Hz × 1.6ms = 3.2% duty cycle) = 120mA total
 * - 25Hz: ~10mA processing (25Hz × 1.6ms = 4% duty cycle) = 125mA total
 * - 30Hz: ~12mA processing (30Hz × 1.6ms = 4.8% duty cycle) = 130mA total  
 * - 40Hz: ~15mA processing (40Hz × 1.6ms = 6.4% duty cycle) = 135mA total
 * - 50Hz: ~18mA processing (50Hz × 1.6ms = 8% duty cycle) = 140mA total
 * 
 * Runtime Examples with 150mAh battery:
 * - 20Hz (120mA): 150/120 = 1.25 decimal hours = 1h 15min
 * - 25Hz (125mA): 150/125 = 1.20 decimal hours = 1h 12min
 * - 30Hz (130mA): 150/130 = 1.15 decimal hours = 1h 9min
 * - 50Hz (140mA): 150/140 = 1.07 decimal hours = 1h 4min (CURRENT SETTING)
 * - 100Hz (150mA): 150/150 = 1.00 decimal hours = 1h 0min
 * 
 * Runtime Format Conversion (hh.mm):
 * Device displays runtime in custom hh.mm format where:
 * - Decimal hours: battery_mAh ÷ current_mA (e.g., 150 ÷ 125 = 1.20)
 * - Extract hours: hours = (int)decimal_hours (e.g., 1)
 * - Extract minutes: minutes = (decimal_part × 60) (e.g., 0.20 × 60 = 12)
 * - Display format: hours + (minutes ÷ 100) (e.g., 1 + 12 ÷ 100 = 1.12)
 * - Result: 1.12 = 1 hour 12 minutes runtime remaining
 */
const float SYSTEM_CURRENT_MA = 140.0f;       // Estimated consumption at 50Hz

// Battery data variables
uint16_t level;                               // Battery level (% - 101=Charging, 102=USB)
uint16_t voltage;                             // Battery voltage (mV or 0xFFFF for invalid states)
uint8_t power;                                // Power state (0=Battery, 1=USB, 2=Init, 3=Low, 4=Charged, 5=Charging)
float runtime;                                // Runtime estimate in hh.mm format (-1.0 for invalid states)
bool battery_changed = false;                 // Change detection cache
#endif

#ifdef BUTTONS
const int BUTTON_PINS[] = {5, 6};
const int NUM_BUTTONS = sizeof(BUTTON_PINS) / sizeof(BUTTON_PINS[0]);

bool button_state[NUM_BUTTONS];               // Current state of each button
bool buttons_changed = false;                 // Change detection cache
#endif

// ================================
// SETUP - Initialize system
// ================================  
void setup() {
  Serial.begin(115200);
  delay(1000);
  
  Serial.printf("\n================================\n");
  Serial.printf("CodeCell v%s\n", FIRMWARE_VERSION);
  Serial.printf("Build Date: %s\n", BUILD_DATE);
  Serial.printf("Author: %s\n", AUTHOR);
  Serial.printf("================================\n\n");
  
  Serial.printf("Initializing system...");
  
  initSensors();
  connectWiFi();

  Serial.printf("System ready!\n\n");
  Serial.printf("================================\n\n");
}

// ================================
// MAIN LOOP - Read sensors & stream OSC
// ================================
void loop() {
  // Decouple sensor reads from network sends to prevent I2C timeouts
  
  if (myCodeCell.Run(SENSOR_RATE_HZ)) {
    readSensors();
  }
  
  static unsigned long last_send = 0;
  unsigned long now = millis();
  
  if (now - last_send >= (1000 / SENDER_RATE_HZ)) {
    sendSensors();
    last_send = now;
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
  
  // Initialize BNO085 sensor system if any motion sensors are enabled
  if (sensors > 0) {
    myCodeCell.Init(sensors);
  }
  
  #ifdef BUTTONS
  for (int i = 0; i < NUM_BUTTONS; i++) {
    pinMode(BUTTON_PINS[i], INPUT_PULLUP);
    button_state[i] = false;
  }
  #endif
}

// ================================
// WIFI FUNCTIONS
// ================================
void connectWiFi() {
  Serial.printf("\nConnecting to %s", SECRET_SSID);
  WiFi.begin(SECRET_SSID, SECRET_PASSWORD);
  
  // Wait for connection with configurable timeout
  unsigned long startTime = millis();
  while (WiFi.status() != WL_CONNECTED && millis() - startTime < 20000) {
    delay(500);
    Serial.printf(".");
  }

  if (WiFi.status() == WL_CONNECTED) {
    Serial.printf("\n\n> CONNECTED!\n");
    Serial.printf("> %s\n\n", WiFi.localIP().toString().c_str());
    Serial.printf("IP Address: %s\n", SECRET_IP);
    Serial.printf("> OSC Port: %d\n", udpPort);
    Serial.printf("> OSC Path: %s/%d\n\n", BASE_ADDRESS, DEVICE_INDEX);
    udp.begin(0);
    return;
  }
  
  Serial.printf("\n> FAILED!\n\n");
  Serial.printf("Please check WiFi credentials and network, then restart device.\n");
  Serial.printf("System halted - power cycle to retry.\n");
  
  // Halt system - standby until WiFi connection is fixed
  while(1) {
    delay(5000);
  }
}

// ================================
// SENSOR READING
// ================================
void readSensors() {
  // Read all sensors - data reading and processing
  #ifdef QUAT
  quat_changed = readQuat();
  #endif
  
  #ifdef ACCEL
  accel_changed = readAccel();
  #endif
  
  #ifdef BATTERY
  battery_changed = readBattery();
  #endif
  
  #ifdef BUTTONS
  buttons_changed = readButtons();
  #endif
}

void sendSensors() {
  // Send via OSC protocol
  #ifdef OSC
  sendOSC();
  #endif
}

#ifdef OSC
void sendOSC() {
  OSCBundle bundle;
  char address[64];
  bool any_data_to_send = false;
  
  #ifdef QUAT
  if (quat_changed) {
    snprintf(address, sizeof(address), "%s/%d/quat", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(qw).add(qx).add(qy).add(qz);
    any_data_to_send = true;
    quat_changed = false;  // Reset flag after adding to bundle
  }
  #endif
  
  #ifdef ACCEL
  if (accel_changed) {
    snprintf(address, sizeof(address), "%s/%d/accel", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(x).add(y).add(z);
    any_data_to_send = true;
    accel_changed = false;  // Reset flag after adding to bundle
  }
  #endif
  
  #ifdef BATTERY
  if (battery_changed) {
    snprintf(address, sizeof(address), "%s/%d/battery", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add((float)level);

    snprintf(address, sizeof(address), "%s/%d/power", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add((float)power);
    
    snprintf(address, sizeof(address), "%s/%d/voltage", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(voltage == 0xFFFF ? -1.0f : voltage / 1000.0f);
    
    snprintf(address, sizeof(address), "%s/%d/runtime", BASE_ADDRESS, DEVICE_INDEX);
    bundle.add(address).add(runtime);
    any_data_to_send = true;
    battery_changed = false;  // Reset flag after adding to bundle
  }
  #endif
  
  #ifdef BUTTONS
  if (buttons_changed) {
    for (int i = 0; i < NUM_BUTTONS; i++) {
      snprintf(address, sizeof(address), "%s/%d/button/%d", BASE_ADDRESS, DEVICE_INDEX, i + 1);
      bundle.add(address).add(button_state[i] ? 1.0f : 0.0f);
    }
    any_data_to_send = true;
    buttons_changed = false;  // Reset flag after adding to bundle
  }
  #endif
  
  // Only send bundle if there's actually data to send
  if (any_data_to_send) {
    udp.beginPacket(targetIP, udpPort);
    bundle.send(udp);
    udp.endPacket();
    bundle.empty();
  }
}
#endif

// ================================
// SENSOR FUNCTIONS
// ================================

// ================================
// QUATERNION READING
// ================================
#ifdef QUAT
bool readQuat() {
  // Read raw quaternion data
  myCodeCell.Motion_RotationVectorRead(qw, qx, qy, qz);
  
  // Static variables for continuity and change detection  
  static float qw_sign_ref = 0.0f, qx_sign_ref = 0.0f, qy_sign_ref = 0.0f, qz_sign_ref = 0.0f;
  static float qw_last_sent = 0.0f, qx_last_sent = 0.0f, qy_last_sent = 0.0f, qz_last_sent = 0.0f;
  
  // Apply sign continuity to prevent quaternion flips (skip if first reading with all zeros)
  if (qw_sign_ref || qx_sign_ref || qy_sign_ref || qz_sign_ref) {
    float dot = qw*qw_sign_ref + qx*qx_sign_ref + qy*qy_sign_ref + qz*qz_sign_ref;
    if (dot < 0.0f) {
      qw = -qw; qx = -qx; qy = -qy; qz = -qz;
    }
  }
  
  // Update sign reference for next comparison
  qw_sign_ref = qw; qx_sign_ref = qx; qy_sign_ref = qy; qz_sign_ref = qz;
  
  // Change detection with distance-based threshold
  float distance = (qw-qw_last_sent)*(qw-qw_last_sent) + 
                   (qx-qx_last_sent)*(qx-qx_last_sent) + 
                   (qy-qy_last_sent)*(qy-qy_last_sent) + 
                   (qz-qz_last_sent)*(qz-qz_last_sent);
  
  if (distance > QUAT_CHANGE_THRESHOLD * QUAT_CHANGE_THRESHOLD) {
    qw_last_sent = qw; qx_last_sent = qx; qy_last_sent = qy; qz_last_sent = qz;
    return true;  // Changed - should transmit
  }
  
  return false;  // No change - skip transmission
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
  // Read battery data every cycle
  level = myCodeCell.BatteryLevelRead();
  power = myCodeCell.PowerStateRead();
  
  // Change detection variables
  static uint16_t level_last_sent = 0xFFFF;
  static uint8_t power_last_sent = 0xFF;
  
  bool level_changed = (level != level_last_sent);
  bool power_changed = (power != power_last_sent);
  
  // Process based on power state
  if ((power == 0 || power == 3 || power == 4) && level > 0) {
    // Battery states: read voltage and calculate runtime
    voltage = myCodeCell.BatteryVoltageRead();
    
    float remaining_capacity = (level / 100.0f) * BATTERY_CAPACITY_MAH;
    float runtime_decimal_hours = remaining_capacity / SYSTEM_CURRENT_MA;
    
    // Convert to custom hh.mm format (1.50 = 1h 50m)
    int hours = (int)runtime_decimal_hours;
    int minutes = (int)((runtime_decimal_hours - hours) * 60.0f);
    runtime = hours + (minutes / 100.0f);  // Custom format: hh.mm
  } else {
    // USB/charging states: set invalid indicators
    voltage = 0xFFFF;  // Invalid voltage indicator (native format)
    runtime = -1.0f;
  }
  
  if (level_changed || power_changed) {
    level_last_sent = level;
    power_last_sent = power;
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
  bool any_button_changed = false;
  
  // Use pinRead() function for direct pin access
  for (int i = 0; i < NUM_BUTTONS; i++) {
    bool input = !myCodeCell.pinRead(BUTTON_PINS[i]);  // Active low (INPUT_PULLUP), so invert
    button_state[i] = input;
    
    if (button_state[i] != button_last_sent[i]) {
      button_last_sent[i] = button_state[i];
      any_button_changed = true;
    }
  }
  
  return any_button_changed;  // True if any button changed
}
#endif