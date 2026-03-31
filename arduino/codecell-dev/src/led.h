/*
 * LED Control
 *
 * NeoPixel control with automatic battery status indication.
 */

#ifndef LED_H
#define LED_H

#include <Arduino.h>

void ledInit();
void ledUpdate();
void ledSet(uint8_t r, uint8_t g, uint8_t b);
void ledSetBrightness(uint8_t brightness);  // 0-10
void ledSetAutomatic(bool automatic);
void ledBlinkError();                        // infinite red blink, never returns

#endif // LED_H
