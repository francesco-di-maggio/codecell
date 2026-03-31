/*
 * Hardware Initialization
 *
 * Board-level setup: serial port, power rails, GPIO hold release.
 * Handles ESP32-C6 specific power control for LED and sensor subsystems.
 *
 * hardwareInit() — call first in setup()
 */

#ifndef HARDWARE_H
#define HARDWARE_H

#include <Arduino.h>

void hardwareInit();

#endif // HARDWARE_H
