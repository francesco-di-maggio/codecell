/*
 * Button Input
 *
 * Reads digital button states from GPIO pins defined by BUTTON_PINS in config.h.
 * Pins are INPUT_PULLUP (active-low: pressed = LOW = true).
 * Button count is derived from BUTTON_PINS at compile time via sizeof.
 *
 * To add a button: append its GPIO pin to BUTTON_PINS in config.h.
 * Nothing else needs to change.
 *
 * Hardware:
 *   BUTTON_PINS = {5, 6} by default (config.h)
 */

#include "button.h"
#include "config.h"

// ================================
// Private State
// ================================
static const int pins[]        = BUTTON_PINS;
static const int NUM_BUTTONS   = sizeof(pins) / sizeof(pins[0]);
static bool states[sizeof(pins) / sizeof(pins[0])]  = {false};  // current state per button
static bool changed[sizeof(pins) / sizeof(pins[0])] = {false};  // set on edge, cleared by buttonClearChanged()

// ================================
// Public API
// ================================
void buttonInit() {
  for (int i = 0; i < NUM_BUTTONS; i++) {
    pinMode(pins[i], INPUT_PULLUP);
    states[i]  = !digitalRead(pins[i]);  // read actual pin level on boot to avoid false edges
    changed[i] = false;
  }
}

void buttonUpdate() {
  for (int i = 0; i < NUM_BUTTONS; i++) {
    bool raw = !digitalRead(pins[i]);  // invert: INPUT_PULLUP means pressed = LOW = false → true
    if (raw != states[i]) {
      states[i]  = raw;
      changed[i] = true;
    }
  }
}

// Returns true if any button has a pending change (not yet cleared).
bool buttonHasChanged() {
  for (int i = 0; i < NUM_BUTTONS; i++) {
    if (changed[i]) return true;
  }
  return false;
}

// Returns true if button[index] has a pending change.
// Call after buttonHasChanged(), before buttonClearChanged().
bool buttonChanged(uint8_t index) {
  if (index >= NUM_BUTTONS) return false;
  return changed[index];
}

// Clears all pending change flags. Call once after all changed states are consumed.
void buttonClearChanged() {
  for (int i = 0; i < NUM_BUTTONS; i++) changed[i] = false;
}

int buttonCount() {
  return NUM_BUTTONS;
}

// Returns current state: true = pressed, false = released.
bool buttonGetState(uint8_t index) {
  if (index >= NUM_BUTTONS) return false;
  return states[index];
}
