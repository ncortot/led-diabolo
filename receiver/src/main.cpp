#include <Arduino.h>
#include <IRLib.h>

#define IR_RECEIVE_PIN 3

IRdecode decoder;
IRrecv receiver(IR_RECEIVE_PIN);

void setup() {
    Serial.begin(115200);

    // Plug the IR receiver direcly on pins 3, 4, 5:
    //  - 3: DATA
    //  - 4: GND
    //  - 5: VCC
    pinMode(4, OUTPUT);
    digitalWrite(4, LOW);
    pinMode(5, OUTPUT);
    digitalWrite(5, HIGH);

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
