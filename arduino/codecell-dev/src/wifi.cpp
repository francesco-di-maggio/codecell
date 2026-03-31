/*
 * WiFi Connection
 *
 * Station mode with automatic reconnection.
 * wifiInit() reads credentials from secrets.h; blocks until connected or timeout.
 * After boot, setAutoReconnect handles drops in the background.
 *
 * Modem sleep:
 *   Disabled — modem sleep causes 100-300ms latency spikes on UDP.
 *   Trade-off: ~50-100mA higher current draw for <10ms latency.
 */

#include "wifi.h"
#include "config.h"
#include "secrets.h"
#include <WiFi.h>

bool wifiInit() {
  WiFi.mode(WIFI_STA);
  WiFi.setAutoReconnect(true);  // Must be set before WiFi.begin(); handles runtime drops
  WiFi.begin(SECRET_SSID, SECRET_PASSWORD);

  // Wait for initial connection with a hard deadline.
  // setAutoReconnect handles drops after this point — this loop is boot-only.
  unsigned long deadline = millis() + (WIFI_CONNECT_TIMEOUT_SEC * 1000UL);
  while (WiFi.status() != WL_CONNECTED && millis() < deadline) {
    delay(WIFI_CONNECT_RETRY_MS);
  }

  if (WiFi.status() != WL_CONNECTED) {
    Serial.printf("%-40s[FAILED]\n", "Connecting to WiFi...");
    return false;
  }

  Serial.printf("%-40s[OK]\n", "Connecting to WiFi...");
  Serial.printf("   SSID:        %s\n", SECRET_SSID);
  Serial.printf("   Assigned IP: %s\n\n", WiFi.localIP().toString().c_str());

  // Disable modem sleep — power saving causes 100-300ms UDP latency spikes
  WiFi.setSleep(false);

  return true;
}

bool wifiIsConnected() {
  return WiFi.status() == WL_CONNECTED;
}

String wifiGetIP() {
  return WiFi.localIP().toString();
}

void wifiMonitor() {
  static bool wasConnected = true;  // assume connected at boot; wifiInit() only returns on success
  bool connected = wifiIsConnected();
  if (!connected && wasConnected) {
    Serial.println(">> WiFi disconnected - waiting for reconnection");
    wasConnected = false;
  } else if (connected && !wasConnected) {
    Serial.printf(">> WiFi reconnected - IP: %s\n", wifiGetIP().c_str());
    wasConnected = true;
  }
}
