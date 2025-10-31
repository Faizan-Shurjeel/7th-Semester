#include <WiFi.h>
#include <WiFiUdp.h>
#include <coap-simple.h>

const char* ssid     = "Galaxy A14 71FF";
const char* password = "iotdemo1";

// CoAP client response callback
void callback_response(CoapPacket &packet, IPAddress ip, int port);

// CoAP server endpoint url callback
void callback_light(CoapPacket &packet, IPAddress ip, int port);

// UDP and CoAP class
// other initialize is "Coap coap(Udp, 512);"
// 2nd default parameter is COAP_BUF_MAX_SIZE(defaulit:128)
// For UDP fragmentation, it is good to set the maximum under
// 1280byte when using the internet connection.
WiFiUDP udp;//Creates a WiFiUDP socket and hands it to the Coap class.
Coap coap(udp);//The CoAP server will use this UDP socket to receive and send packets.

// LED STATE
bool LEDSTATE;//Stores the current on/off status of the LED so both GET and PUT can use it.

// CoAP server endpoint URL
//packet — contains all data from the client (headers, message ID, payload, token, etc.).

//ip, port — address and port of the client (your WSL machine).
void callback_light(CoapPacket &packet, IPAddress ip, int port) {
  Serial.print("[Light] request from ");
  Serial.print(ip);
  Serial.print(":");
  Serial.print(port);
  Serial.print("  MID=");
  Serial.print(packet.messageid);
  Serial.print(" tokenlen=");
  Serial.println(packet.tokenlen);

  // Copy and null-terminate payload
  char p[packet.payloadlen + 1];
  if (packet.payloadlen > 0) {
    memcpy(p, packet.payload, packet.payloadlen);
  }
  p[packet.payloadlen] = '\0';   // use '\0' not NULL
  String message = String(p);
  //CoAP payloads are binary blobs, so we copy them into a C-string and terminate it.Then we wrap it in a String for easy comparison.


  message.trim();

  Serial.print("Payload: '");
  Serial.print(message);
  Serial.println("'");

  // Process payload
  if (message.equals("0")) {
    LEDSTATE = false;
  } else if (message.equals("1")) {
    LEDSTATE = true;
  } else {
    Serial.println("Unknown payload (expect '0' or '1')");
  }
//If payload is "0", LED is turned off. If payload is "1", LED is turned on.
//If payload is empty (like GET) or invalid, print a warning.
  digitalWrite(2, LEDSTATE ? HIGH : LOW);

  // Prepare response payload
  const char *resp = LEDSTATE ? "1" : "0";

  // ---- Fixed sendResponse call ----
  // Use enumeration values directly, not numeric literals
  coap.sendResponse(
      ip,
      port,
      packet.messageid,
      resp,
      strlen(resp),
      COAP_CONTENT,         // response code 2.05 Content
      COAP_TEXT_PLAIN,      // content type
      packet.token,
      packet.tokenlen);

  Serial.println("Response sent (attempt)");
}
//ip, port → where to send the response (client). packet.messageid → matches request MID. resp → payload (either "0" or "1").
//strlen(resp) → payload length.
//COAP_CONTENT → response code = 2.05 Content (successful GET/PUT).
//COAP_TEXT_PLAIN → content type header.
//packet.token, packet.tokenlen → matches the request token so the client knows which response belongs to which request.

//void callback_light(CoapPacket &packet, IPAddress ip, int port) {
//  Serial.println("[Light] ON/OFF");
//  
//  // send response
//  char p[packet.payloadlen + 1];
//  memcpy(p, packet.payload, packet.payloadlen);
//  p[packet.payloadlen] = NULL;
//  
//  String message(p);
//
//  if (message.equals("0"))
//    LEDSTATE = false;
//  else if(message.equals("1"))
//    LEDSTATE = true;
//      
//  if (LEDSTATE) {
//    digitalWrite(9, HIGH) ; 
//    coap.sendResponse(ip, port, packet.messageid, "1");
//  } else { 
//    digitalWrite(9, LOW) ; 
//    coap.sendResponse(ip, port, packet.messageid, "0");
//  }
//}

// CoAP client response callback
//Used if your ESP32 acts as a CoAP client (sending requests to other servers).
//Right now you’re only using ESP32 as a server, but the library supports both.
void callback_response(CoapPacket &packet, IPAddress ip, int port) {
  Serial.println("[Coap Response got]");
  
  char p[packet.payloadlen + 1];
  memcpy(p, packet.payload, packet.payloadlen);
  p[packet.payloadlen] = NULL;
  
  Serial.println(p);
}

void setup() {
  Serial.begin(9600);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
      delay(500);
      Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  // LED State
  pinMode(2, OUTPUT);
  digitalWrite(2, HIGH);
  LEDSTATE = true;
  
  // add server url endpoints.
  // can add multiple endpoint urls.
  // exp) coap.server(callback_switch, "switch");
  //      coap.server(callback_env, "env/temp");
  //      coap.server(callback_env, "env/humidity");
  Serial.println("Setup Callback Light");
  coap.server(callback_light, "light");

  // client response callback.
  // this endpoint is single callback.
  Serial.println("Setup Response Callback");
  coap.response(callback_response);

  // start coap server/client
  coap.start();
}

void loop() {
  delay(1000);
  coap.loop();
}
/*
if you change LED, req/res test with coap-client(libcoap), run following.
coap-client -m get coap://(arduino ip addr)/light
coap-client -e "1" -m put coap://(arduino ip addr)/light
coap-client -e "0" -m put coap://(arduino ip addr)/light
*/
