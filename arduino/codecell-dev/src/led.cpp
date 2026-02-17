/*
 * LED Control (NeoPixel)
 *
 * Drives a single WS2812B NeoPixel via neopixelWrite().
 * Two modes: automatic (battery status colours) and manual (RGB set via OSC).
 *
 * Automatic battery status colours (matches CodeCell library convention):
 *   POWER_BAT_RUN  (0) — green
 *   POWER_USB      (1) — blue
 *   POWER_INIT     (2) — off
 *   POWER_BAT_LOW  (3) — red
 *   POWER_BAT_FULL (4) — dim green (raw 0,1,0 — bypasses brightness scaling)
 *   POWER_BAT_CHRG (5) — dim blue  (raw 0,0,1 — bypasses brightness scaling)
 *
 * Brightness (0-10) scales the R/G/B values before writing.
 * ledBlinkError() overrides everything with an infinite red blink (critical errors only).
 *
 * Hardware:
 *   LED_PIN = GPIO 10 (C3) / GPIO 19 (C6)
 */

#include "led.h"
#include "config.h"

#ifdef BATTERY
#include "battery.h"
#endif

// ================================
// Private State
// ================================
static uint8_t brightness = LED_BRIGHTNESS;
static bool automaticMode = true;

static void writeScaled(uint8_t r, uint8_t g, uint8_t b) {
  r = (r * brightness) / 10;
  g = (g * brightness) / 10;
  b = (b * brightness) / 10;
  neopixelWrite(LED_PIN, r, g, b);
}

// ================================
// Public API
// ================================
void ledInit() {
  pinMode(LED_PIN, OUTPUT);
  neopixelWrite(LED_PIN, 0, 0, 0);
  automaticMode = true;
}

void ledUpdate() {
  if (!automaticMode || brightness == 0) {
    return;
  }
  
  #ifdef BATTERY
  uint8_t state = batteryGetPowerState();
  
  switch (state) {
    case 0:  // POWER_BAT_RUN - Green
      writeScaled(0, 255, 0);
      break;
    case 1:  // POWER_USB - Blue
      writeScaled(0, 0, 255);
      break;
    case 2:  // POWER_INIT - Off
      neopixelWrite(LED_PIN, 0, 0, 0);
      break;
    case 3:  // POWER_BAT_LOW - Red
      writeScaled(255, 0, 0);
      break;
    case 4:  // POWER_BAT_FULL - Dim green
      neopixelWrite(LED_PIN, 0, 1, 0);
      break;
    case 5:  // POWER_BAT_CHRG - Dim blue
      neopixelWrite(LED_PIN, 0, 0, 1);
      break;
    default:
      neopixelWrite(LED_PIN, 0, 0, 0);
      break;
  }
  #endif
}

void ledSet(uint8_t r, uint8_t g, uint8_t b) {
  automaticMode = false;
  writeScaled(r, g, b);
}

void ledSetBrightness(uint8_t newBrightness) {
  brightness = (newBrightness > 10) ? 10 : newBrightness;
}

void ledSetAutomatic(bool automatic) {
  automaticMode = automatic;
}

void ledBlinkError() {
  brightness = 10;
  while (true) {
    neopixelWrite(LED_PIN, 255, 0, 0);
    delay(250);
    neopixelWrite(LED_PIN, 0, 0, 0);
    delay(250);
  }
}
