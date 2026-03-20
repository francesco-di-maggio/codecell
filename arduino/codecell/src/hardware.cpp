/*
 * Hardware Initialization
 *
 * Board-level setup run once at boot:
 *   - ESP32-C6 power rail enable and GPIO hold release
 */

#include "hardware.h"
#include "config.h"

void hardwareInit() {
  // ESP32-C6: enable LED and sensor power rails, release GPIO hold from sleep
  #if CONFIG_IDF_TARGET_ESP32C6
  pinMode(LED_ON_PIN, OUTPUT);
  pinMode(SENS_ON_PIN, OUTPUT);
  digitalWrite(LED_ON_PIN, HIGH);
  digitalWrite(SENS_ON_PIN, HIGH);
  gpio_hold_dis((gpio_num_t)LED_ON_PIN);
  gpio_hold_dis((gpio_num_t)SENS_ON_PIN);
  #endif

  delay(500);  // Hardware stabilization
}
