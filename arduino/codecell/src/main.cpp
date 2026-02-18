/*
 * Main System Coordinator
 *
 * Initialization sequence and main update loop.
 * Each module is initialized once in codecellSetup(), then polled
 * in codecellLoop() at its own rate.
 *
 * Update rates:
 *   IMU:     every loop iteration (report rate set in imu.cpp via BNO085)
 *   Battery: BATTERY_READ_RATE_HZ (5 Hz)
 *   Light:   LIGHT_READ_RATE_HZ (50 Hz)
 *   Buttons: every loop iteration
 *   OSC TX:  STREAM_RATE_HZ; OSC RX: every loop iteration
 *
 * WiFi reconnection is handled automatically by the SDK (setAutoReconnect).
 * Credentials come from secrets.h (excluded from version control via .gitignore).
 */

#include "main.h"
#include "config.h"

#include "../secrets.h"

#ifdef BATTERY
#include "battery.h"
#endif

#include "imu.h"

#ifdef LED
#include "led.h"
#endif

#ifdef LIGHT
#include "light.h"
#endif

#ifdef BUTTON
#include "button.h"
#endif

#include "wifi.h"
#include "osc.h"

// ================================
// Initialization
// ================================
void codecellSetup() {
  // Hardware power control (C6 only)
  #if CONFIG_IDF_TARGET_ESP32C6
  pinMode(LED_ON_PIN, OUTPUT);
  pinMode(SENS_ON_PIN, OUTPUT);
  digitalWrite(LED_ON_PIN, HIGH);
  digitalWrite(SENS_ON_PIN, HIGH);
  gpio_hold_dis((gpio_num_t)LED_ON_PIN);
  gpio_hold_dis((gpio_num_t)SENS_ON_PIN);
  #endif

  delay(500);  // Hardware stabilization

  // Serial
  Serial.begin(115200);
  delay(1000);

  #ifdef LED
  pinMode(LED_PIN, OUTPUT);
  #endif

  // Banner
  Serial.printf("\n════════════════════════════════════════════\n");
  Serial.printf("CodeCell-dev\n");
  Serial.printf("Version: %s\n", FIRMWARE_VERSION);
  Serial.printf("Build Date: %s\n", BUILD_DATE);
  Serial.printf("Board: ");
  #if CONFIG_IDF_TARGET_ESP32C6
  Serial.println("ESP32-C6");
  #else
  Serial.println("ESP32-C3");
  #endif
  Serial.printf("Stream Rate: %d Hz\n", STREAM_RATE_HZ);
  Serial.printf("════════════════════════════════════════════\n\n");

  // WiFi connection
  if (!wifiInit(SECRET_SSID, SECRET_PASSWORD)) {
    #ifdef LED
    ledBlinkError();
    #endif
    while(1) delay(1000);
  }

  // OSC protocol setup
  if (!oscInit(SECRET_IP, SECRET_OUTPORT, SECRET_INPORT)) {
    #ifdef LED
    ledBlinkError();
    #endif
    while(1) delay(1000);
  }

  // Hardware modules
  #ifdef BATTERY
  batteryInit();
  #endif

  #ifdef LED
  ledInit();
  #endif

  Serial.println();

  // IMU sensor
  if (!imuInit()) {
    #ifdef LED
    ledBlinkError();
    #endif
    while(1) delay(1000);
  }

  #ifdef LIGHT
  if (!lightInit()) {
    Serial.printf("%-40s[WARNING]\n", "Initializing VCNL4040...");
  } else {
    Serial.printf("%-40s[OK]\n", "Initializing VCNL4040...");
  }
  #endif

  #ifdef BUTTON
  buttonInit();
  Serial.printf("%-40s[OK]\n", "Initializing Buttons...");
  #endif

  // Ready banner
  Serial.println();
  Serial.printf("════════════════════════════════════════════\n");
  Serial.printf("System Ready\n");
  Serial.printf("════════════════════════════════════════════\n\n");
}

// ================================
// Main Loop
// ================================
void codecellLoop() {
  static unsigned long lastStreamTime = 0;
  static unsigned long lastBatteryRead = 0;
  static unsigned long lastLightRead = 0;
  static bool wifiWasConnected = true;

  unsigned long now = millis();

  // Read IMU every loop (reset detection and recovery handled inside imuUpdate)
  imuUpdate();

  // Battery monitoring (5Hz)
  #ifdef BATTERY
  if (now - lastBatteryRead >= (1000 / BATTERY_READ_RATE_HZ)) {
    lastBatteryRead = now;
    batteryUpdate();
  }
  #endif

  // Light sensor (50Hz)
  #ifdef LIGHT
  if (now - lastLightRead >= (1000 / LIGHT_READ_RATE_HZ)) {
    lastLightRead = now;
    lightUpdate();
  }
  #endif

  // Button reading (every loop)
  #ifdef BUTTON
  buttonUpdate();
  #endif

  // WiFi state logging — SDK handles reconnection in the background
  bool wifiNow = wifiIsConnected();
  if (!wifiNow && wifiWasConnected) {
    Serial.println(">> WiFi disconnected - waiting for reconnection");
    wifiWasConnected = false;
  } else if (wifiNow && !wifiWasConnected) {
    Serial.printf(">> WiFi reconnected - IP: %s\n", wifiGetIP().c_str());
    wifiWasConnected = true;
  }

  // OSC: only operate when WiFi is up
  if (wifiNow) {
    oscUpdate();
    if (now - lastStreamTime >= (1000 / STREAM_RATE_HZ)) {
      lastStreamTime = now;
      oscSendAll();
    }
  }
}
