/*
 * CodeCell - Using Adafruit_BNO08x Library
 * Uses Adafruit_BNO08x library directly (bypasses CodeCell wrapper for stability)
 * 
 * Advantages:
 * - More stable I2C communication (direct library control)
 * - Flexible sensor report types (gyro-integrated vs AR/VR stabilized)
 * - Full feature set (quaternions, Euler, accel, battery)
 * - Modular design for easy feature additions
 * 
 * Hardware: ESP32-C3 + BNO085 9-DOF IMU (CodeCell board)
 */

#include "secrets.h"

// Module headers
#include "config.h"
#include "imu.h"
#include "osc.h"
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

// ================================
// SETUP
// ================================
void setup() {
  delay(500);  // Critical: Let hardware stabilize after upload
  
  Serial.begin(115200);
  delay(1000);

  #ifdef LED
  // Ensure the pin is ready even if we fail early (blinkError uses neopixelWrite directly)
  pinMode(LED_PIN, OUTPUT);
  #endif
  
  Serial.printf("\n================================\n");
  Serial.printf("CodeCell %s\n", FIRMWARE_VERSION);
  Serial.printf("Build Date: %s\n", BUILD_DATE);
  Serial.printf("Sensor Mode: %s\n", 
    #ifdef FAST_MODE
    "FAST (Gyro-Integrated)"
    #else
    "ACCURATE (AR/VR Stabilized)"
    #endif
  );
  Serial.printf("================================\n\n");

  // Initialize WiFi FIRST (matches official CodeCell library)
  initNetwork(SECRET_SSID, SECRET_PASSWORD, SECRET_IP, SECRET_OUTPORT);
  WiFi.setSleep(false);
  udp.begin(0);

  // Initialize LED
  #ifdef LED
  initLED();
  #endif

  // Initialize battery monitoring
  #ifdef BATTERY
  initBattery();
  #endif

  // Initialize sensors (I2C)
  if (!initSensors()) {
    #ifdef LED
    Serial.println("\nCRITICAL ERROR: Entering error state (red blink)\n");
    blinkError();  // Never returns - blinks red forever
    #endif
    while (1) { delay(10); }
  }
  
  // Initialize light sensor (same I2C bus)
  #ifdef LIGHT
  if (!initLight()) {
    Serial.println("Warning: Light sensor not available");
  }
  #endif
  
  // Initialize buttons
  #ifdef BUTTON
  initButtons();
  #endif
  
  Serial.println("Ready\n");
}

// ================================
// MAIN LOOP
// ================================
void loop() {
  static unsigned long lastSendTime = 0;
  static unsigned long lastLightRead = 0;
  static unsigned long lastBatteryRead = 0;
  
  // Handle sensor reset
  if (bno08x.wasReset()) {
    Serial.println("BNO085 reset");
    setReports();
  }
  
  // Read IMU every loop
  readSensors();
  
  #ifdef BATTERY
  // Battery read at configured rate
  if (millis() - lastBatteryRead >= (1000 / BATTERY_READ_RATE_HZ)) {
    lastBatteryRead = millis();
    readBattery();
  }
  #endif
  
  #ifdef LIGHT
  // Light sensor read at configured rate
  if (millis() - lastLightRead >= (1000 / LIGHT_READ_RATE_HZ)) {
    lastLightRead = millis();
    readLight();
  }
  #endif
  
  #ifdef BUTTON
  // Button read every loop
  readButtons();
  #endif
  
  // OSC command receive
  receiveOSC();
  
  // Send OSC bundle at configured rate
  if (millis() - lastSendTime >= (1000 / STREAM_RATE_HZ)) {
    lastSendTime = millis();
    sendOSC(SECRET_IP, SECRET_OUTPORT);
  }
}