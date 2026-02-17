/*
 * Button Input
 * GPIO button reading with change detection
 */

#ifndef BUTTON_H
#define BUTTON_H

#include <Arduino.h>
#include "config.h"

// Public API
void buttonInit();
void buttonUpdate();
bool buttonHasChanged();

// Getters
int  buttonCount();                  // Number of configured buttons
bool buttonGetState(uint8_t index);  // 0 or 1

#endif // BUTTON_H
