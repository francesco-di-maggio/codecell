/*
 * CodeCell - Direct BNO085 Version
 * Uses Adafruit_BNO08x library directly (bypasses CodeCell wrapper for stability)
 * Based on Paul's stable implementation + your advanced features
 * 
 * Advantages:
 * - More stable I2C communication (direct library control)
 * - Flexible sensor report types (gyro-integrated vs AR/VR stabilized)
 * - Full feature set (quaternions, Euler, accel, battery)
 * - Continuous 100Hz streaming option
 * 
 * Hardware: ESP32-C3 + BNO085 9-DOF IMU (CodeCell board)
 * I2C Pins: SDA=8, SCL=9 (CodeCell schematic)
 */

#include <Arduino.h>
#include <Adafruit_BNO08x.h>
#include <WiFi.h>
#include <WiFiUdp.h>
#include <OSCBundle.h>

// ================================
#include "secrets.h"

// ================================
// VERSION INFORMATION
// ================================
const char* FIRMWARE_VERSION = "2.0.0-direct-bno";
const char* BUILD_DATE = "2026-01-26";
const char* AUTHOR = "Francesco Di Maggio & Paul De Marinis";

// ================================
// SENSOR MODE
// ================================
// #define FAST_MODE                    // Gyro-integrated (up to 1000Hz, more noise)
                                        // Disabled = AR/VR stabilized (250Hz max, more accurate)

// ================================
// SENSORS - Enable/Disable
// ================================
#define QUAT                            // Quaternion rotation data
#define EULER                           // Euler angles (roll, pitch, yaw)
#define ACCEL                           // Linear acceleration
// #define BATTERY                      // Battery monitoring (requires CodeCell library)

// ================================
// NETWORK CONFIGURATION
// ================================
const int DEVICE_INDEX = 1;
const char* BASE_ADDRESS = "/codecell";
const IPAddress targetIP(SECRET_IP);
const int udpPort = SECRET_OUTPORT;
const int STREAM_RATE_HZ = 100;         // Data transmission rate

// ================================
// BNO085 CONFIGURATION
// ================================
#define BNO08X_RESET -1
#define I2C_SDA 8                        // CodeCell I2C pins
#define I2C_SCL 9

Adafruit_BNO08x bno08x(BNO08X_RESET);
sh2_SensorValue_t sensorValue;

#ifdef FAST_MODE
  sh2_SensorId_t reportType = SH2_GYRO_INTEGRATED_RV;
  long reportIntervalUs = 2000;          // ~500Hz
#else
  sh2_SensorId_t reportType = SH2_ARVR_STABILIZED_RV;
  long reportIntervalUs = 5000;          // ~200Hz  
#endif

// ================================
// DATA STRUCTURES
// ================================
struct euler_t {
  float yaw;
  float pitch;
  float roll;
} ypr;

#ifdef QUAT
float qw = 0.0, qx = 0.0, qy = 0.0, qz = 0.0;
#endif

#ifdef ACCEL
float ax = 0.0, ay = 0.0, az = 0.0;
#endif

WiFiUDP udp;

// ================================
// FUNCTION DECLARATIONS
// ================================
void setReports();
void quaternionToEuler(float qr, float qi, float qj, float qk, euler_t* ypr, bool degrees = false);
void readSensors();
void sendOSC();

// ================================
// SETUP
// ================================
void setup() {
  Serial.begin(115200);
  delay(1000);
  
  Serial.printf("\n================================\n");
  Serial.printf("CodeCell v%s\n", FIRMWARE_VERSION);
  Serial.printf("Build Date: %s\n", BUILD_DATE);
  Serial.printf("Sensor Mode: %s\n", 
    #ifdef FAST_MODE
    "FAST (Gyro-Integrated)"
    #else
    "ACCURATE (AR/VR Stabilized)"
    #endif
  );
  Serial.printf("================================\n\n");

  // Initialize I2C with CodeCell pins
  Wire.setPins(I2C_SDA, I2C_SCL);
  Wire.begin();
  
  // Initialize BNO085
  Serial.println("Initializing BNO085...");
  if (!bno08x.begin_I2C()) {
    Serial.println("ERROR: Failed to find BNO085 chip!");
    while (1) { delay(10); }
  }
  Serial.println("BNO085 found!");
  
  setReports();
  
  // Initialize WiFi
  Serial.printf("Connecting to %s", SECRET_SSID);
  WiFi.mode(WIFI_STA);
  WiFi.begin(SECRET_SSID, SECRET_PASSWORD);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  
  Serial.printf("\n\n> CONNECTED!\n");
  Serial.printf("> IP: %s\n", WiFi.localIP().toString().c_str());
  Serial.printf("> Target: %s:%d\n", targetIP.toString().c_str(), udpPort);
  Serial.printf("> OSC Path: %s/%d\n", BASE_ADDRESS, DEVICE_INDEX);
  Serial.printf("> Stream Rate: %dHz\n", STREAM_RATE_HZ);
  
  WiFi.setSleep(false);  // Disable WiFi sleep for consistent timing
  udp.begin(0);
  
  Serial.println("\nSystem ready!\n================================\n");
}

// ================================
// MAIN LOOP
// ================================
void loop() {
  static unsigned long lastSendTime = 0;
  unsigned long interval = 1000 / STREAM_RATE_HZ;
  
  // Handle sensor reset
  if (bno08x.wasReset()) {
    Serial.println("BNO085 reset detected - reinitializing...");
    setReports();
  }
  
  // Read sensor data
  readSensors();
  
  // Send at specified rate
  if (millis() - lastSendTime >= interval) {
    lastSendTime = millis();
    sendOSC();
  }
}

// ================================
// SENSOR FUNCTIONS
// ================================
void setReports() {
  Serial.println("Configuring sensor reports...");
  if (!bno08x.enableReport(reportType, reportIntervalUs)) {
    Serial.println("ERROR: Could not enable sensor report!");
  } else {
    Serial.println("Sensor reports configured successfully");
  }
}

void readSensors() {
  if (bno08x.getSensorEvent(&sensorValue)) {
    switch (sensorValue.sensorId) {
      case SH2_ARVR_STABILIZED_RV:
        #ifdef QUAT
        qw = sensorValue.un.arvrStabilizedRV.real;
        qx = sensorValue.un.arvrStabilizedRV.i;
        qy = sensorValue.un.arvrStabilizedRV.j;
        qz = sensorValue.un.arvrStabilizedRV.k;
        #endif
        
        #ifdef EULER
        quaternionToEuler(
          sensorValue.un.arvrStabilizedRV.real,
          sensorValue.un.arvrStabilizedRV.i,
          sensorValue.un.arvrStabilizedRV.j,
          sensorValue.un.arvrStabilizedRV.k,
          &ypr, true
        );
        #endif
        break;
        
      case SH2_GYRO_INTEGRATED_RV:
        #ifdef QUAT
        qw = sensorValue.un.gyroIntegratedRV.real;
        qx = sensorValue.un.gyroIntegratedRV.i;
        qy = sensorValue.un.gyroIntegratedRV.j;
        qz = sensorValue.un.gyroIntegratedRV.k;
        #endif
        
        #ifdef EULER
        quaternionToEuler(
          sensorValue.un.gyroIntegratedRV.real,
          sensorValue.un.gyroIntegratedRV.i,
          sensorValue.un.gyroIntegratedRV.j,
          sensorValue.un.gyroIntegratedRV.k,
          &ypr, true
        );
        #endif
        break;
        
      #ifdef ACCEL
      case SH2_LINEAR_ACCELERATION:
        ax = sensorValue.un.linearAcceleration.x;
        ay = sensorValue.un.linearAcceleration.y;
        az = sensorValue.un.linearAcceleration.z;
        break;
      #endif
    }
  }
}

void quaternionToEuler(float qr, float qi, float qj, float qk, euler_t* ypr, bool degrees) {
  float sqr = sq(qr);
  float sqi = sq(qi);
  float sqj = sq(qj);
  float sqk = sq(qk);

  ypr->yaw = atan2(2.0 * (qi * qj + qk * qr), (sqi - sqj - sqk + sqr));
  ypr->pitch = asin(-2.0 * (qi * qk - qj * qr) / (sqi + sqj + sqk + sqr));
  ypr->roll = atan2(2.0 * (qj * qk + qi * qr), (-sqi - sqj + sqk + sqr));

  if (degrees) {
    ypr->yaw *= RAD_TO_DEG;
    ypr->pitch *= RAD_TO_DEG;
    ypr->roll *= RAD_TO_DEG;
  }
}

void sendOSC() {
  OSCBundle bundle;
  char address[64];
  
  #ifdef QUAT
  snprintf(address, sizeof(address), "%s/%d/quat", BASE_ADDRESS, DEVICE_INDEX);
  bundle.add(address).add(qw).add(qx).add(qy).add(qz);
  #endif
  
  #ifdef EULER
  snprintf(address, sizeof(address), "%s/%d/euler", BASE_ADDRESS, DEVICE_INDEX);
  bundle.add(address).add(ypr.roll).add(ypr.pitch).add(ypr.yaw);
  #endif
  
  #ifdef ACCEL
  snprintf(address, sizeof(address), "%s/%d/accel", BASE_ADDRESS, DEVICE_INDEX);
  bundle.add(address).add(ax).add(ay).add(az);
  #endif
  
  udp.beginPacket(targetIP, udpPort);
  bundle.send(udp);
  udp.endPacket();
  bundle.empty();
}
