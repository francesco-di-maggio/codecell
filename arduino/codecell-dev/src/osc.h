/*
 * OSC Protocol Driver
 *
 * UDP send/receive using the CNMAT OSCBundle library.
 * oscInit() reads target IP and ports from secrets.h.
 * oscReceive() parses incoming commands each loop.
 * oscSend(bundle) transmits a pre-built bundle to the target IP.
 *
 * Incoming commands (point-to-point to device IP):
 *   /reboot        — restarts the device
 *   /led 0         — LED off
 *   /led 1         — LED back to automatic battery status
 *   /led r g b [b] — manual RGB, optional brightness (0-10)
 */

#ifndef OSC_H
#define OSC_H

#include <Arduino.h>
#include <OSCBundle.h>

void oscInit();
void oscReceive();
void oscSend(OSCBundle& bundle);

#endif // OSC_H
