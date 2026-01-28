/*
 * LED Control Module
 * NeoPixel LED on GPIO 10 via ESP32 RMT peripheral
 */

#ifndef LED_H
#define LED_H

#include <Arduino.h>

// Battery status colors (for reference, not user-configurable)
#define LED_COLOR_BATTERY_RUN   0x00FF00  // Green
#define LED_COLOR_USB           0x0000FF  // Blue
#define LED_COLOR_BATTERY_LOW   0xFF0000  // Red
#define LED_COLOR_CHARGED       0x00A030  // Aqua
#define LED_COLOR_CHARGING      0xA06000  // Yellow
#define LED_OFF                 0x000000  // Off

// Functions
void initLED();
void setLED(uint8_t r, uint8_t g, uint8_t b);
void setLED(uint32_t color);
void setBrightness(uint8_t brightness);  // 0-10
void updateBatteryLED(uint16_t voltage_mv, bool usb_powered);
void setLEDMode(bool automatic);  // true=automatic battery status, false=manual control
void blinkError();  // Blink red continuously (for critical errors)

#endif // LED_H
