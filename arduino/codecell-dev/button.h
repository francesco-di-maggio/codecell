/*
 * Button Module
 * GPIO button input handling
 */

#ifndef BUTTON_H
#define BUTTON_H

#include <Arduino.h>

// Button pin definitions (CodeCell hardware)
#define BUTTON1_PIN 5  // Light wakeup pin
#define BUTTON2_PIN 7  // Motion wakeup pin
#define NUM_BUTTONS 2

// State variables
extern bool buttonStates[NUM_BUTTONS];
extern bool buttonChanged;

// Functions
void initButtons();
void readButtons();

#endif
