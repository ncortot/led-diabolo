#include <Arduino.h>

#include <IRLib.h>
#include <led.h>

#define IR_RECEIVE_PIN 5

#define IR_CH0      0xffa25d
#define IR_CH1      0xff629d
#define IR_CH2      0xffe21d

#define IR_PREV     0xff22dd
#define IR_NEXT     0xff02fd
#define IR_PLAY     0xffc23d

#define IR_MINUS    0xffe01f
#define IR_PLUS     0xffa857
#define IR_EQ       0xff906f

#define IR_0        0xff6897
#define IR_1        0xff30cf
#define IR_2        0xff18e7
#define IR_3        0xff7a85
#define IR_4        0xff10ef
#define IR_5        0xff38c7
#define IR_6        0xff5aa5
#define IR_7        0xff42bd
#define IR_8        0xff4ab5
#define IR_9        0xff52ad

#define IR_100      0xff9867
#define IR_200      0xffb04f


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
      //irsend.send(JVC, ++irdata, 20);
    }

    if (receiver.GetResults(&decoder)) {
      color = 1;
      decoder.decode();
      switch (decoder.value) {
        case IR_CH0:
          color = 0;
          break;
        case IR_PREV:
          color = 1;
          break;
        case IR_MINUS:
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
