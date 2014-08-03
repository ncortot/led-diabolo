#include <Arduino.h>
#include <IRLib.h>

#include "led.h"
#include "remote.h"

#define IR_RECEIVE_PIN 5

static uint16_t color = 2;
static uint16_t counter = 0;
static uint16_t irdata = 0;

IRsend irsend;

IRdecode decoder;
IRrecv receiver(IR_RECEIVE_PIN);

void setup() {
    Serial.begin(19200);
    receiver.enableIRIn();
    pinMode(IR_RECEIVE_PIN, INPUT);
    led_setup();
}

void loop() {
    ++counter;

    if (counter % 8 == 0) {
      // irsend.send(NEC, ++irdata, 0);
    }

    if (receiver.GetResults(&decoder)) {
      color = 1;
      decoder.decode();
      switch (decoder.value) {
        case IR_REMOTE_CHMINUS:
          color = 0;
          break;
        case IR_REMOTE_PREV:
          color = 1;
          break;
        case IR_REMOTE_MINUS:
          color = 2;
          break;
        default:
          color = 0;
      }
      receiver.resume();
    }

    Serial.print("loop ");
    Serial.println(counter, HEX);

    led_loop(color);

    delay(200);
}
