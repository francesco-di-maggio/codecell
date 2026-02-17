/*
 * Button Input
 *
 * Reads digital button states from GPIO pins defined by BUTTON_PINS in config.h.
 * Pins are configured as INPUT_PULLUP (active-low: pressed = LOW = true).
 * Button count is derived automatically from BUTTON_PINS via sizeof.
 *
 * To add a button: add its GPIO pin to BUTTON_PINS in config.h.
 * No other file needs to change.
 *
 * Hardware:
 *   BUTTON_PINS = {5, 6} by default (config.h)
 */

#include "button.h"
#include "config.h"

// ================================
// Private State (encapsulated)
// ================================
static const int pins[] = BUTTON_PINS;
static const int numButtons = sizeof(pins) / sizeof(pins[0]);
static bool states[sizeof(pins) / sizeof(pins[0])] = {false};
static bool prevStates[sizeof(pins) / sizeof(pins[0])] = {false};
static bool changed = false;

// ================================
// Public API
// ================================
void buttonInit() {
  // Configure pins as INPUT_PULLUP (active-low)
  for (int i = 0; i < numButtons; i++) {
    pinMode(pins[i], INPUT_PULLUP);
    states[i] = false;
    prevStates[i] = false;
  }
}

void buttonUpdate() {
  changed = false;

  for (int i = 0; i < numButtons; i++) {
    bool current = !digitalRead(pins[i]);  // Invert (active-low)
    states[i] = current;

    if (states[i] != prevStates[i]) {
      prevStates[i] = states[i];
      changed = true;
    }
  }
}

bool buttonHasChanged() {
  return changed;
}

int buttonCount() {
  return numButtons;
}

bool buttonGetState(uint8_t index) {
  if (index >= numButtons) return false;
  return states[index];
}
