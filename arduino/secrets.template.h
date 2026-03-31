/*
 * secrets.template.h — Network credentials template.
 *
 * Copy this file to secrets.h and fill in your values.
 * secrets.h is listed in .gitignore — never commit it.
 */

#ifndef SECRETS_H
#define SECRETS_H

#define SECRET_SSID      "your_wifi_network"
#define SECRET_PASSWORD  "your_wifi_password"

#define SECRET_IP       "192.168.1.100"  // IP of your OSC receiver (your computer)
#define SECRET_OUTPORT   8000            // port your receiver listens on
#define SECRET_INPORT    9000            // port this device listens on

#endif // SECRETS_H
