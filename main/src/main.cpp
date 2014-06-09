#include <Arduino.h>

#include <led.h>

static uint16_t counter = 0;

void setup() {
    Serial.begin(19200);

    pinMode(A0, OUTPUT);
    pinMode(A1, OUTPUT);
    pinMode(A2, OUTPUT);

    led_setup();
}

void loop() {
    ++counter;

    digitalWrite(A0, counter & 0x1 ? HIGH : LOW);
    digitalWrite(A1, counter & 0x2 ? HIGH : LOW);
    digitalWrite(A2, counter & 0x4 ? HIGH : LOW);

    Serial.print("loop ");
    Serial.println(counter, HEX);

    led_loop();

    delay(100);
}
