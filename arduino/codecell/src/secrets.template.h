/*
 * Network Credentials Template
 *
 * Copy this file to src/secrets.h and fill in your settings.
 * secrets.h is gitignored — never commit it.
 */

#ifndef SECRETS_H
#define SECRETS_H

// WiFi credentials
#define SECRET_SSID     "your_wifi_network"
#define SECRET_PASSWORD "your_wifi_password"

// OSC target configuration
#define SECRET_IP      "192.168.1.100"  // IP of the OSC receiver (your computer)
#define SECRET_OUTPORT 9000             // Port the receiver listens on
#define SECRET_INPORT  8000             // Port this device listens on

#endif
