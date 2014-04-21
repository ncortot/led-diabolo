static uint8_t counter = 0;

void setup() {
    pinMode(A0, OUTPUT);
    pinMode(A1, OUTPUT);
    pinMode(A2, OUTPUT);
}

void loop() {
    ++counter;
    digitalWrite(A0, counter & 0x1 ? HIGH : LOW);
    digitalWrite(A1, counter & 0x2 ? HIGH : LOW);
    digitalWrite(A2, counter & 0x4 ? HIGH : LOW);
    delay(100);
}
