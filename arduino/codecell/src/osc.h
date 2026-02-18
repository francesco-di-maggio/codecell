/*
 * OSC Protocol
 */

#ifndef OSC_H
#define OSC_H

#include <Arduino.h>

// Public API
bool oscInit(const char* remoteIp, uint16_t remotePort, uint16_t localPort);
void oscUpdate();  // Receive commands
void oscSendAll();  // Send all sensor data

#endif // OSC_H
