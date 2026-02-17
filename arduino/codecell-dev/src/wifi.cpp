/*
 * WiFi Connection
 *
 * Station mode with automatic reconnection.
 * wifiInit() blocks until connected or WIFI_CONNECT_TIMEOUT_SEC elapses.
 * After boot, setAutoReconnect handles drops in the background.
 *
 * Modem sleep:
 *   Disabled — modem sleep causes 100-300ms latency spikes on UDP.
 *   Trade-off: ~50-100mA higher current draw for <10ms latency.
 */

#include "wifi.h"
#include "config.h"
#include <WiFi.h>

// ================================
// Public API
// ================================
bool wifiInit(const char* ssid, const char* password) {
  Serial.print("Connecting to WiFi ");
  WiFi.mode(WIFI_STA);
  WiFi.setAutoReconnect(true);  // Must be set before WiFi.begin(); handles runtime drops
  WiFi.begin(ssid, password);

  // Wait for initial connection with a hard deadline.
  // setAutoReconnect handles drops after this point — this loop is boot-only.
  unsigned long deadline = millis() + (WIFI_CONNECT_TIMEOUT_SEC * 1000UL);
  while (WiFi.status() != WL_CONNECTED && millis() < deadline) {
    delay(WIFI_CONNECT_RETRY_MS);
    Serial.print(".");
  }

  if (WiFi.status() != WL_CONNECTED) {
    Serial.println("\n\nWiFi connection failed!");
    return false;
  }
  
  char connectMsg[64];
  snprintf(connectMsg, sizeof(connectMsg), "Connected to: %s", ssid);
  Serial.printf("\n\n%-40s[OK]\n", connectMsg);
  Serial.printf("   IP Address: %s\n\n", WiFi.localIP().toString().c_str());
  
  // Disable modem sleep for low latency
  // Power saving mode causes 100-300ms latency spikes
  // Trade-off: ~50-100mA higher consumption for <10ms latency
  WiFi.setSleep(false);

  return true;
}

bool wifiIsConnected() {
  return WiFi.status() == WL_CONNECTED;
}

String wifiGetIP() {
  return WiFi.localIP().toString();
}
