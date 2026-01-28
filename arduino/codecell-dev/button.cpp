/*
 * Button Module Implementation
 * Reads GPIO button inputs with debouncing
 */

#include "button.h"

// State variables
bool buttonStates[NUM_BUTTONS] = {false};
bool buttonChanged = false;

// Button pins array
static const int buttonPins[NUM_BUTTONS] = {BUTTON1_PIN, BUTTON2_PIN};
static bool lastSentStates[NUM_BUTTONS] = {false};

void initButtons() {
  // Configure as INPUT_PULLUP (active low)
  for (int i = 0; i < NUM_BUTTONS; i++) {
    pinMode(buttonPins[i], INPUT_PULLUP);
    buttonStates[i] = false;
    lastSentStates[i] = false;
  }
  
  Serial.println("Buttons initialized (GPIO 5, 7)");
}

void readButtons() {
  buttonChanged = false;
  
  for (int i = 0; i < NUM_BUTTONS; i++) {
    bool currentState = !digitalRead(buttonPins[i]);  // Active low
    buttonStates[i] = currentState;
    
    if (buttonStates[i] != lastSentStates[i]) {  // Change detection
      lastSentStates[i] = buttonStates[i];
      buttonChanged = true;
    }
  }
}
