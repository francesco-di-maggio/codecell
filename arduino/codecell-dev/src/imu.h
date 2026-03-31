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
#ifdef QUAT
void imuGetQuaternion(float& w, float& x, float& y, float& z);
#endif
#ifdef ACCEL
void imuGetAccel(float& x, float& y, float& z);
#endif

// Change detection
#ifdef QUAT
bool imuQuaternionChanged();
#endif
#ifdef ACCEL
bool imuAccelChanged();
#endif

#endif // IMU_H
