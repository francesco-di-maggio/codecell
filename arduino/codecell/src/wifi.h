/*
 * WiFi Connection
 *
 * Station mode with automatic reconnection.
 * wifiInit() reads credentials from secrets.h; blocks until connected or timeout.
 * After boot, the SDK handles drops via setAutoReconnect.
 */

#ifndef WIFI_H
#define WIFI_H

#include <Arduino.h>

bool   wifiInit();
bool   wifiIsConnected();
String wifiGetIP();
void   wifiMonitor();  // log connect/disconnect events; call every loop()

#endif // WIFI_H
