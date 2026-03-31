/*
 * Light Sensor (VCNL4040)
 * Proximity and ambient light sensing
 */

#ifndef LIGHT_H
#define LIGHT_H

#include <Arduino.h>

// Public API
bool lightInit();
void lightUpdate();
bool lightHasChanged();

// Getters
uint16_t lightGetProximity();
uint16_t lightGetAmbient();
uint16_t lightGetWhite();

#endif // LIGHT_H
