/*
 * LED Control
 * NeoPixel control with automatic battery status indication
 */

#ifndef LED_H
#define LED_H

#include <Arduino.h>

// Public API
void ledInit();
void ledUpdate();  // Update based on battery state
void ledSet(uint8_t r, uint8_t g, uint8_t b);  // Manual control
void ledSetBrightness(uint8_t brightness);  // 0-10
void ledSetAutomatic(bool automatic);  // true=battery status, false=manual
void ledBlinkError();  // Infinite red blink (critical error)

#endif // LED_H
