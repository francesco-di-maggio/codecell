/*
 * Network Configuration Template
 * Copy to the sketch folder and rename to secrets.h
 * Configure with your network settings
 */

#ifndef SECRETS_H
#define SECRETS_H

// WiFi credentials
#define SECRET_SSID "your_wifi_network"
#define SECRET_PASSWORD "your_wifi_password"

// OSC target configuration
#define SECRET_IP      "192.168.1.100"  // OSC host IP (receiver)
#define SECRET_OUTPORT 9000             // Port host listens on (device sends here)
#define SECRET_INPORT  8000             // Port device listens on (host sends here)

#endif
