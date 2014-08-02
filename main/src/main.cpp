#include <Arduino.h>

#include <IRLib.h>
#include <led.h>

static uint16_t counter = 0;
IRsend irsend;

void setup() {
    Serial.begin(19200);
    led_setup();
}

void loop() {
    ++counter;

    irsend.send(SONY,0xa8bca, 20);

    Serial.print("loop ");
    Serial.println(counter, HEX);

    led_loop();

    delay(100);
}
