/*
 * Battery Monitoring
 * Voltage reading, power state detection, and change tracking
 */

#ifndef BATTERY_H
#define BATTERY_H

#include <Arduino.h>

// Power states
#define POWER_BAT_RUN  0  // Running on battery
#define POWER_USB      1  // USB power only
#define POWER_INIT     2  // Initial boot state
#define POWER_BAT_LOW  3  // Battery low (will sleep)
#define POWER_BAT_FULL 4  // Fully charged
#define POWER_BAT_CHRG 5  // Charging

// Public API
void batteryInit();
void batteryUpdate();
bool batteryHasChanged();

// Getters
int batteryGetVoltage();        // Millivolts; fractional mV is below ADC resolution
uint8_t batteryGetPercentage();
uint8_t batteryGetPowerState();
bool batteryIsUSBPowered();

#endif // BATTERY_H
