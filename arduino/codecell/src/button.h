/*
 * Button Input
 *
 * Active-low GPIO buttons with edge detection.
 * Call buttonUpdate() at a fixed rate, then check buttonHasChanged() before
 * iterating with buttonChanged(i). Always call buttonClearChanged() after
 * consuming all pending changes so flags reset for the next cycle.
 */

#ifndef BUTTON_H
#define BUTTON_H

#include <Arduino.h>

void buttonInit();
void buttonUpdate();

bool buttonHasChanged();            // true if any button has a pending change
bool buttonChanged(uint8_t index);  // true if button[index] has a pending change
void buttonClearChanged();          // reset all change flags after consumption

int  buttonCount();
bool buttonGetState(uint8_t index); // true = pressed, false = released

#endif // BUTTON_H
