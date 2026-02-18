/*
 * WiFi Connection
 */

#ifndef WIFI_H
#define WIFI_H

#include <Arduino.h>

// Initialize WiFi connection
bool wifiInit(const char* ssid, const char* password);

// Connection status
bool wifiIsConnected();

// Get IP address
String wifiGetIP();

#endif // WIFI_H
