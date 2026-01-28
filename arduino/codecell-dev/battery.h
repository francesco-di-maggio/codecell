/*
 * Battery Monitoring Module
 * Direct ADC read from GPIO 4, no CodeCell library dependency
 */

#ifndef BATTERY_H
#define BATTERY_H

#include <Arduino.h>

// Power states (compatible with CodeCell library)
#define POWER_BAT_RUN  0  // Battery only
#define POWER_USB      1  // USB only
#define POWER_INIT     2  // Boot state
#define POWER_BAT_LOW  3  // Battery low
#define POWER_BAT_FULL 4  // Fully charged
#define POWER_BAT_CHRG 5  // Charging

// State variables
extern float batteryVoltage;
extern float lastBatteryVoltage;
extern uint8_t batteryPercentage;
extern bool isUSBPowered;
extern uint8_t powerState;
extern bool powerStateChanged;
extern bool voltageChanged;

// Functions
void initBattery();
void readBattery();
bool batteryChanged();
uint8_t getPowerState();

#endif // BATTERY_H
