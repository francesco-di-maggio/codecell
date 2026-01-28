/*
 * LED Control Module Implementation
 * Uses ESP32 neopixelWrite() function for WS2812 control
 */

#include "led.h"
#include "config.h"

// Brightness state
static uint8_t current_brightness = LED_BRIGHTNESS;
static bool automatic_mode = true;  // Default: automatic battery status mode

static void writeLEDScaled(uint8_t r, uint8_t g, uint8_t b) {
  // Apply brightness (0-10 scale)
  r = (r * current_brightness) / 10;
  g = (g * current_brightness) / 10;
  b = (b * current_brightness) / 10;
  neopixelWrite(LED_PIN, r, g, b);
}

void initLED() {
  pinMode(LED_PIN, OUTPUT);
  setLED(LED_OFF);
  automatic_mode = true;
}

void setBrightness(uint8_t brightness) {
  current_brightness = (brightness > 10) ? 10 : brightness;
}

void setLEDMode(bool automatic) {
  automatic_mode = automatic;
}

void setLED(uint32_t color) {
  uint8_t r = (color >> 16) & 0xFF;
  uint8_t g = (color >> 8) & 0xFF;
  uint8_t b = color & 0xFF;
  setLED(r, g, b);
}

void setLED(uint8_t r, uint8_t g, uint8_t b) {
  automatic_mode = false;  // Manual LED control disables automatic mode
  writeLEDScaled(r, g, b);
}

void updateBatteryLED(uint16_t voltage_mv, bool usb_powered) {
  if (!automatic_mode || current_brightness == 0) {
    return;  // Manual mode or LED off
  }
  
  #ifdef BATTERY
  extern uint8_t getPowerState();
  uint8_t state = getPowerState();
  
  // CodeCell exact LED colors
  switch (state) {
    case 0:  // POWER_BAT_RUN - Running on battery - Green
      writeLEDScaled(0, 255, 0);
      break;
    case 1:  // POWER_USB - USB only - Blue (breathing in CodeCell)
      writeLEDScaled(0, 0, 255);
      break;
    case 2:  // POWER_INIT - Initial boot state
      neopixelWrite(LED_PIN, 0, 0, 0);
      break;
    case 3:  // POWER_BAT_LOW - Low battery - Red
      writeLEDScaled(255, 0, 0);
      break;
    case 4:  // POWER_BAT_FULL - Fully charged - Green (dim in CodeCell: LED_SLEEP_BRIGHTNESS)
      neopixelWrite(LED_PIN, 0, 1, 0);  // CodeCell uses brightness=1
      break;
    case 5:  // POWER_BAT_CHRG - Charging - Blue (dim in CodeCell: LED_SLEEP_BRIGHTNESS)
      neopixelWrite(LED_PIN, 0, 0, 1);  // CodeCell uses brightness=1
      break;
    default:
      neopixelWrite(LED_PIN, 0, 0, 0);
      break;
  }
  #endif
}

void blinkError() {
  // Blink red LED forever (critical error indicator)
  // Don't disable automatic mode - just override temporarily
  uint8_t saved_brightness = current_brightness;
  current_brightness = 10;  // Full brightness for visibility
  
  while (true) {
    neopixelWrite(LED_PIN, 255, 0, 0);  // Red (bypass setLED to avoid mode change)
    delay(250);
    neopixelWrite(LED_PIN, 0, 0, 0);    // Off
    delay(250);
  }
}
