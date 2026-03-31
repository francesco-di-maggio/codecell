/*
 * Sensor Coordinator
 *
 * Initializes and polls all optional sensors: IMU, battery, light, buttons.
 * Each sensor runs at its own rate defined in config.h.
 *
 * sensorsInit()        — call once in setup(); returns false if IMU fails
 * sensorsUpdate(now)   — call every loop(); each sensor polls at its own rate
 */

#ifndef SENSORS_H
#define SENSORS_H

#include <Arduino.h>

bool sensorsInit();
void sensorsUpdate(unsigned long now);

#endif // SENSORS_H
