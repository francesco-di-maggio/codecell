/*
 * OSC Communication Module
 * Handles WiFi and OSC message transmission
 */

#ifndef OSC_H
#define OSC_H

#include <Arduino.h>
#include <WiFi.h>
#include <WiFiUdp.h>
#include <OSCBundle.h>
#include <OSCMessage.h>

// Network configuration
extern WiFiUDP udp;
extern WiFiUDP udpReceive;

// Functions
void initNetwork(const char* ssid, const char* password, const char* targetIP, int port);
void sendOSC(const char* targetIP, int port);
void receiveOSC();
void sendDebugOSC(const char* message, int value1, int value2, int value3);

#endif // OSC_H
