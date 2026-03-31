/*
 * Sensor Coordinator
 *
 * Initializes and polls all optional sensors.
 * IMU is fatal on failure; light is a warning; battery and buttons are silent.
 * Each sensor runs at its own rate defined in config.h.
 */

#include "sensors.h"
#include "config.h"
#include "imu.h"

#ifdef BATTERY
#include "battery.h"
#endif

#ifdef LIGHT
#include "light.h"
#endif

#ifdef BUTTON
#include "button.h"
#endif

// ================================
// Init
// ================================
bool sensorsInit() {
  Serial.println();

  // IMU — fatal on failure; caller decides how to handle
  if (!imuInit()) return false;

  #ifdef BATTERY
  batteryInit();
  #endif

  #ifdef LIGHT
  if (!lightInit()) {
    Serial.printf("%-40s[WARNING]\n", "Initializing VCNL4040...");
  } else {
    Serial.printf("%-40s[OK]\n", "Initializing VCNL4040...");
  }
  #endif

  #ifdef BUTTON
  buttonInit();
  #endif

  return true;
}

// ================================
// Update (call every loop)
// ================================
void sensorsUpdate(unsigned long now) {
  // IMU: read every loop — BNO085 reports when a new sample is ready
  imuUpdate();

  // Battery (5 Hz)
  #ifdef BATTERY
  static unsigned long lastBatteryRead = 0;
  if (now - lastBatteryRead >= (1000 / BATTERY_READ_RATE_HZ)) {
    lastBatteryRead = now;
    batteryUpdate();
  }
  #endif

  // Light (50 Hz)
  #ifdef LIGHT
  static unsigned long lastLightRead = 0;
  if (now - lastLightRead >= (1000 / LIGHT_READ_RATE_HZ)) {
    lastLightRead = now;
    lightUpdate();
  }
  #endif

  // Buttons (50 Hz)
  #ifdef BUTTON
  static unsigned long lastButtonRead = 0;
  if (now - lastButtonRead >= (1000 / BUTTON_READ_RATE_HZ)) {
    lastButtonRead = now;
    buttonUpdate();
  }
  #endif
}
