/*
 * IMU Sensor (BNO085)
 * Quaternion and linear acceleration
 */

#ifndef IMU_H
#define IMU_H

#include <Arduino.h>

// Public API
bool imuInit();
void imuUpdate();

// Getters
void imuGetQuaternion(float& w, float& x, float& y, float& z);
#ifdef ACCEL
void imuGetAccel(float& x, float& y, float& z);
#endif

// Change detection
bool imuQuaternionChanged();
#ifdef ACCEL
bool imuAccelChanged();
#endif

#endif // IMU_H
