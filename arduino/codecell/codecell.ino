/*
 * CodeCell
 * Francesco Di Maggio, 2026
 * 
 * Libraries: Adafruit BNO08x, OSC by Adrian Freed  ← install via Library Manager
 * Hardware:  CodeCell (ESP32-C3 / ESP32-C6)
 */

#include "src/main.h"

void setup() {
  codecellSetup();
}

void loop() {
  codecellLoop();
}
