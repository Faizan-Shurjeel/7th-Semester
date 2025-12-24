// #include <WiFi.h>
// #include <WiFiClientSecure.h>
// #include <PubSubClient.h>
// #include <ArduinoJson.h>
// #include "time.h"

// const char* WIFI_SSID = "realme 9";
// const char* WIFI_PASSWORD = "i885qfej";
// const char* MQTT_BROKER   = "af02a6d53e324ecaa47d0f0635770e00.s1.eu.hivemq.cloud";
// const int   MQTT_PORT     = 8883;
// const char* MQTT_USER     = "esp32-device";
// const char* MQTT_PASSWORD = ".......";
// const char* MQTT_TOPIC    = "power/readings";
// const char* NTP_SERVER = "pool.ntp.org";
// const long  GMT_OFFSET_SEC = 18000;  // PKT is UTC+5
// const int   DAYLIGHT_OFFSET_SEC = 0;

// // --- Global Clients & Handles ---
// WiFiClientSecure wifiClient;
// PubSubClient mqttClient(wifiClient);
// QueueHandle_t dataQueue;

// // A simple struct to hold our data payload for the queue
// struct MqttMessage {
//     char payload[128];
// };

// // =========================================================================
// //            TASK 1: MQTT Management Task
// // =========================================================================
// void mqttTask(void * parameter) {
//     Serial.println("MQTT Task started on Core " + String(xPortGetCoreID()));

//     // Configure the MQTT client
//     mqttClient.setServer(MQTT_BROKER, MQTT_PORT);
//     mqttClient.setBufferSize(512); // Increase buffer for TLS

//     // This task's main loop
//     for (;;) {
//         // If not connected, attempt to reconnect
//         if (!mqttClient.connected()) {
//             Serial.print("Attempting MQTT connection...");
            
//             // Generate unique client ID to avoid conflicts
//             String clientId = "ESP32-Plug-" + String(random(0xffff), HEX);
            
//             if (mqttClient.connect(clientId.c_str(), MQTT_USER, MQTT_PASSWORD)) {
//                 Serial.println("connected!");
//             } else {
//                 Serial.print("failed, rc=");
//                 Serial.print(mqttClient.state());
//                 Serial.println(" try again in 5 seconds");
//                 vTaskDelay(5000 / portTICK_PERIOD_MS);
//                 continue;
//             }
//         }
        
//         // MQTT keep-alive
//         mqttClient.loop();

//         // Check if there is a new message in the queue
//         MqttMessage message;
//         if (xQueueReceive(dataQueue, &message, (TickType_t)0) == pdPASS) {
//             Serial.print("Publishing: ");
//             Serial.println(message.payload);
//             mqttClient.publish(MQTT_TOPIC, message.payload);
//         }
        
//         vTaskDelay(10 / portTICK_PERIOD_MS);
//     }
// }

// // =========================================================================
// //            TIME SYNCHRONIZATION
// // =========================================================================
// bool syncClock() {
//     Serial.print("Syncing time with NTP server...");
    
//     // Try multiple NTP servers for better reliability
//     configTime(GMT_OFFSET_SEC, DAYLIGHT_OFFSET_SEC, 
//                "time.google.com", "time.cloudflare.com", NTP_SERVER);
    
//     // Wait for time sync with longer timeout for ESP32-S3
//     int retry = 0;
//     const int maxRetries = 40; // 20 seconds timeout
//     struct tm timeinfo;
    
//     while (!getLocalTime(&timeinfo) && retry < maxRetries) {
//         Serial.print(".");
//         delay(500);
//         retry++;
        
//         // Re-trigger NTP every 5 seconds
//         if (retry % 10 == 0) {
//             configTime(GMT_OFFSET_SEC, DAYLIGHT_OFFSET_SEC, 
//                       "time.google.com", "time.cloudflare.com", NTP_SERVER);
//         }
//     }
    
//     Serial.println();
    
//     if (retry >= maxRetries) {
//         Serial.println("❌ Failed to obtain time");
//         Serial.println("⚠️ Continuing anyway - insecure TLS doesn't require valid time");
//         return false;
//     }
    
//     Serial.println("✓ Time synchronized successfully");
//     Serial.print("Current time: ");
//     Serial.println(&timeinfo, "%Y-%m-%d %H:%M:%S");
    
//     // Verify time is reasonable (after 2020)
//     if (timeinfo.tm_year < 120) { // tm_year is years since 1900
//         Serial.println("⚠️ Warning: Time seems incorrect, may cause TLS issues");
//         return false;
//     }
    
//     return true;
// }

// // =========================================================================
// //            SETUP
// // =========================================================================
// void setup() {
//     Serial.begin(115200);
//     delay(1500); // Give USB CDC time to initialize on ESP32-S3
    
//     Serial.println("\n\n=== MQTT Standby Power Eliminator (ESP32-S3) ===");
//     Serial.println("Firmware: v4.1 - FreeRTOS + TLS");
    
//     // Connect to Wi-Fi
//     WiFi.mode(WIFI_STA);
//     WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
//     Serial.print("Connecting to Wi-Fi");
    
//     int wifiRetry = 0;
//     while (WiFi.status() != WL_CONNECTED && wifiRetry < 40) {
//         delay(500);
//         Serial.print(".");
//         wifiRetry++;
//     }
    
//     if (WiFi.status() != WL_CONNECTED) {
//         Serial.println("\n❌ WiFi connection failed! Restarting...");
//         delay(3000);
//         ESP.restart();
//     }
    
//     Serial.println("\n✓ WiFi connected");
//     Serial.print("IP Address: ");
//     Serial.println(WiFi.localIP());
//     Serial.print("Signal Strength: ");
//     Serial.print(WiFi.RSSI());
//     Serial.println(" dBm");
    
//     // Give network stack time to stabilize (critical for ESP32-S3)
//     delay(2000);

//     // Synchronize clock - CRITICAL for TLS/SSL
//     bool timeOk = syncClock();
//     if (!timeOk) {
//         Serial.println("Note: Time sync failed but continuing (insecure mode doesn't need it)");
//     }
    
//     // Configure TLS - insecure mode for testing
//     // For production, use wifiClient.setCACert(root_ca);
//     wifiClient.setInsecure();
//     Serial.println("✓ TLS configured (insecure mode)");

//     // Create the FreeRTOS queue
//     dataQueue = xQueueCreate(5, sizeof(MqttMessage));
//     if (dataQueue == NULL) {
//         Serial.println("❌ Error creating queue!");
//         while(1) delay(1000);
//     }
    
//     // Create MQTT task on Core 1
//     Serial.println("Creating MQTT task on Core 1...");
//     BaseType_t taskCreated = xTaskCreatePinnedToCore(
//         mqttTask,
//         "MQTTTask",
//         10000,
//         NULL,
//         1,
//         NULL,
//         1
//     );
    
//     if (taskCreated != pdPASS) {
//         Serial.println("❌ Failed to create MQTT task!");
//         while(1) delay(1000);
//     }

//     Serial.println("✓ Setup complete. Starting sensor loop...\n");
//     delay(1000);
// }

// // =========================================================================
// //            MAIN LOOP
// // =========================================================================
// void loop() {
//     // Simulate sensor reading
//     float simulatedCurrent = ((millis() / 10000) % 2 == 0) 
//                            ? 0.27 + (random(0, 10) / 100.0)
//                            : 0.02 + (random(0, 5) / 100.0);

//     // Create JSON payload
//     StaticJsonDocument<128> doc;
//     doc["device_id"] = "ESP32-Plug-01";
//     doc["current_a"] = simulatedCurrent;
//     doc["timestamp"] = millis();
    
//     // Prepare message for queue
//     MqttMessage message;
//     serializeJson(doc, message.payload, sizeof(message.payload));
    
//     // Send to MQTT task via queue (thread-safe)
//     if (xQueueSend(dataQueue, (void *)&message, (TickType_t)10) != pdPASS) {
//         Serial.println("⚠️ Queue full - message dropped");
//     }

//     delay(10000); // 10 second interval
// }
#include <WiFi.h>
#include <WiFiClientSecure.h>
#include <PubSubClient.h>
#include <ArduinoJson.h>
#include "time.h"

// --- Configuration ---
// 1. Your Wi-Fi Credentials
const char* WIFI_SSID = "realme 9";
const char* WIFI_PASSWORD = "i885qfej";

// 2. Your NEW EMQX Cloud Credentials
const char* MQTT_BROKER   = "wa0cfcfa.ala.asia-southeast1.emqxsl.com";
const int   MQTT_PORT     = 8883;
const char* MQTT_USER     = "esp32-device";
// >>>>>>>>>> REPLACE WITH THE PASSWORD YOU CREATED IN EMQX <<<<<<<<<<
const char* MQTT_PASSWORD = "......."; 
const char* MQTT_TOPIC    = "power/readings";

// 3. NTP Configuration (No changes needed)
const char* NTP_SERVER = "pool.ntp.org";
const long  GMT_OFFSET_SEC = 18000;
const int   DAYLIGHT_OFFSET_SEC = 0;

// --- Global Clients & Handles ---
WiFiClientSecure wifiClient;
PubSubClient mqttClient(wifiClient);
QueueHandle_t dataQueue;

struct MqttMessage {
    char payload[128];
};

// =========================================================================
//            TASK 1: MQTT Management Task
// =========================================================================
void mqttTask(void * parameter) {
    Serial.println("MQTT Task started on Core " + String(xPortGetCoreID()));
    mqttClient.setServer(MQTT_BROKER, MQTT_PORT);
    mqttClient.setBufferSize(512);

    for (;;) {
        if (!mqttClient.connected()) {
            Serial.print("Attempting MQTT connection...");
            String clientId = "ESP32-Plug-" + String(random(0xffff), HEX);
            
            if (mqttClient.connect(clientId.c_str(), MQTT_USER, MQTT_PASSWORD)) {
                Serial.println("connected!");
            } else {
                Serial.print("failed, rc=");
                Serial.print(mqttClient.state());
                Serial.println(" try again in 5 seconds");
                vTaskDelay(5000 / portTICK_PERIOD_MS);
                continue;
            }
        }
        
        mqttClient.loop();

        MqttMessage message;
        if (xQueueReceive(dataQueue, &message, (TickType_t)0) == pdPASS) {
            Serial.print("Publishing: ");
            Serial.println(message.payload);
            mqttClient.publish(MQTT_TOPIC, message.payload);
        }
        
        vTaskDelay(10 / portTICK_PERIOD_MS);
    }
}

// =========================================================================
//            TIME SYNCHRONIZATION
// =========================================================================
bool syncClock() {
    Serial.print("Syncing time with NTP server...");
    configTime(GMT_OFFSET_SEC, DAYLIGHT_OFFSET_SEC, "time.google.com", "time.cloudflare.com", NTP_SERVER);
    
    int retry = 0;
    const int maxRetries = 40;
    struct tm timeinfo;
    
    while (!getLocalTime(&timeinfo) && retry < maxRetries) {
        Serial.print(".");
        delay(500);
        retry++;
        if (retry % 10 == 0) {
            configTime(GMT_OFFSET_SEC, DAYLIGHT_OFFSET_SEC, "time.google.com", "time.cloudflare.com", NTP_SERVER);
        }
    }
    
    Serial.println();
    
    if (retry >= maxRetries) {
        Serial.println("❌ Failed to obtain time");
        Serial.println("⚠️ Continuing anyway - insecure TLS doesn't require valid time");
        return false;
    }
    
    Serial.println("✓ Time synchronized successfully");
    Serial.print("Current time: ");
    Serial.println(&timeinfo, "%Y-%m-%d %H:%M:%S");
    
    if (timeinfo.tm_year < 120) {
        Serial.println("⚠️ Warning: Time seems incorrect, may cause TLS issues");
        return false;
    }
    
    return true;
}

// =========================================================================
//            SETUP
// =========================================================================
void setup() {
    Serial.begin(115200);
    delay(1500);
    
    Serial.println("\n\n=== MQTT Standby Power Eliminator (EMQX) ===");
    Serial.println("Firmware: v5.0 - FreeRTOS + EMQX");
    
    WiFi.mode(WIFI_STA);
    WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
    Serial.print("Connecting to Wi-Fi");
    
    int wifiRetry = 0;
    while (WiFi.status() != WL_CONNECTED && wifiRetry < 40) {
        delay(500);
        Serial.print(".");
        wifiRetry++;
    }
    
    if (WiFi.status() != WL_CONNECTED) {
        Serial.println("\n❌ WiFi connection failed! Restarting...");
        delay(3000);
        ESP.restart();
    }
    
    Serial.println("\n✓ WiFi connected");
    Serial.print("IP Address: ");
    Serial.println(WiFi.localIP());
    
    delay(2000);

    syncClock();
    wifiClient.setInsecure();
    Serial.println("✓ TLS configured (insecure mode)");

    dataQueue = xQueueCreate(5, sizeof(MqttMessage));
    if (dataQueue == NULL) {
        Serial.println("❌ Error creating queue!");
        while(1) delay(1000);
    }
    
    Serial.println("Creating MQTT task on Core 1...");
    BaseType_t taskCreated = xTaskCreatePinnedToCore(
        mqttTask, "MQTTTask", 10000, NULL, 1, NULL, 1
    );
    
    if (taskCreated != pdPASS) {
        Serial.println("❌ Failed to create MQTT task!");
        while(1) delay(1000);
    }

    Serial.println("✓ Setup complete. Starting sensor loop...\n");
    delay(1000);
}

// =========================================================================
//            MAIN LOOP
// =========================================================================
void loop() {
    float simulatedCurrent = ((millis() / 10000) % 2 == 0) 
                           ? 0.27 + (random(0, 10) / 100.0)
                           : 0.02 + (random(0, 5) / 100.0);

    StaticJsonDocument<128> doc;
    doc["device_id"] = "ESP32-Plug-01";
    doc["current_a"] = simulatedCurrent;
    doc["timestamp"] = millis();
    
    MqttMessage message;
    serializeJson(doc, message.payload, sizeof(message.payload));
    
    if (xQueueSend(dataQueue, (void *)&message, (TickType_t)10) != pdPASS) {
        Serial.println("⚠️ Queue full - message dropped");
    }

    delay(10000);
}