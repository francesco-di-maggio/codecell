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

// ================================
// Setup
// ================================
void setup() {
  delay(500); // allow time to open serial monitor after reset
  Serial.begin(115200);

  hardwareInit();

  Serial.printf("\n════════════════════════════════════════════\n");
  Serial.printf("CodeCell Firmware\n");
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

  ledInit();
  if (!wifiInit())    { while (1) delay(1000); }
  oscInit();
  if (!sensorsInit()) { while (1) delay(1000); }

  Serial.println();
  Serial.printf("════════════════════════════════════════════\n");
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
