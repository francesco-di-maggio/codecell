/*
 * OSC Stream
 *
 * Reads sensor state via getters, builds an OSC bundle,
 * and sends it at STREAM_RATE_HZ. Only sends messages whose data changed.
 * Periodic messages (ping, ip, uptime) are sent at their own rates.
 *
 * oscStream(now) — call every loop(); skips send if WiFi is down
 */

#ifndef STREAM_H
#define STREAM_H

#include <Arduino.h>

void oscStream(unsigned long now);

#endif // STREAM_H
