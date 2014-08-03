#include <Arduino.h>
#include <IRLib.h>

#define IR_RECEIVE_PIN 3

IRdecode decoder;
IRrecv receiver(IR_RECEIVE_PIN);

void setup() {
    Serial.begin(115200);
    receiver.enableIRIn();
}

void loop() {
    if (receiver.GetResults(&decoder)) {
      decoder.decode();
      Serial.println(decoder.value, HEX);
      receiver.resume();
    }
    delay(100);
}
