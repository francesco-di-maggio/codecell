/*
 * CodeCell Firmware
 * Francesco Di Maggio, 2026
 *
 * Hardware:  CodeCell (ESP32-C3 / ESP32-C6)
 * Libraries: Adafruit BNO08x, OSC by Adrian Freed  — install via Library Manager
 *
 * Configuration:  src/config.h   — feature flags, pins, rates, thresholds
 * Credentials:    src/secrets.h  — WiFi SSID/password, OSC host IP and ports
 *                                — copy from secrets.template.h, never commit
 */

#include "src/config.h"
#include "src/hardware.h"
#include "src/led.h"
#include "src/wifi.h"
#include "src/osc.h"
#include "src/sensors.h"
#include "src/stream.h"

// -- Sketch info ----------------------------------------------
#define SKETCH "codecell-dev"
#define AUTHOR "Francesco Di Maggio"
#if CONFIG_IDF_TARGET_ESP32C6
  #define BOARD "ESP32-C6"
#else
  #define BOARD "ESP32-C3"
#endif

// ================================
// Boot Info
// ================================
void printBootInfo() {
  Serial.printf("\n════════════════════════════════════════════\n");
  Serial.printf(" %s  v%s  %s\n", SKETCH, VERSION, __DATE__);
  Serial.printf(" %s\n", AUTHOR);
  Serial.printf(" Board:  %s\n", BOARD);
  Serial.printf(" OSC:    %s/%d  @  %d Hz\n", BASE_ADDRESS, DEVICE_INDEX, STREAM_RATE_HZ);
  Serial.printf("════════════════════════════════════════════\n");
}

// ================================
// Setup
// ================================
void setup() {
  delay(500); // allow time to open serial monitor after reset
  Serial.begin(115200);

  hardwareInit();
  printBootInfo();

  ledInit();
  if (!wifiInit())    { ledBlinkError(); }
  oscInit();
  if (!sensorsInit()) { ledBlinkError(); }

  Serial.printf("\n════════════════════════════════════════════\n");
  Serial.printf("System Ready\n");
  Serial.printf("════════════════════════════════════════════\n\n");
}

// ================================
// Loop
// ================================
void loop() {
  unsigned long now = millis();

  sensorsUpdate(now);

  wifiMonitor();
  
  oscReceive();
  oscStream(now);
}
