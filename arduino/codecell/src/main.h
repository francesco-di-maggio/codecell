/*
 * Main System Coordinator
 * Initialization and main loop control
 */

#ifndef MAIN_H
#define MAIN_H

#include <Arduino.h>

// Public API called from .ino
void codecellSetup();
void codecellLoop();

#endif // MAIN_H
