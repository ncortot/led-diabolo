#include <avr/io.h>

#include "led.h"

#define SDO_PORT    PORTC
#define SDO_PIN     1
#define CLK_PORT    PORTC
#define CLK_PIN     2
#define LATCH_PORT  PORTC
#define LATCH_PIN   3

#define PWM_PIN     4

#define CMD_SWITCH  1
#define CMD_CHANNEL 3
#define CMD_GLOBAL  5
#define CMD_CONFIG  7

#define CHANNELS    16


uint16_t brightness[CHANNELS];

void write(const uint16_t data, const uint8_t command);


void led_setup()
{
    // Set outputs low
    SDO_PORT &= ~_BV(SDO_PIN);
    CLK_PORT &= ~_BV(CLK_PIN);
    LATCH_PORT &= ~_BV(LATCH_PIN);

    // Enable output pins
    DDRC |= _BV(SDO_PIN) | _BV(CLK_PIN) | _BV(LATCH_PIN);

    // Enable PWM clock using timer 2
    // Toggle OC2B on compare match, CTC mode
    TCCR2A = _BV(COM2B0) | _BV(WGM21);
    // No prescaling
    TCCR2B = _BV(CS20);
    // Set timer TOP to the lowest value for f = F_CPU / 2
    OCR2A = 0;
    // Enable OC2B output
    DDRD |= _BV(3);

    // LED1642GW configuration
    write(0x0000, CMD_SWITCH);
    write(0x047f, CMD_CONFIG);

    // Testing
    write(0xffff, CMD_SWITCH);
    for (uint8_t channel = 0; channel < CHANNELS; ++channel) {
        brightness[channel] = 0xffff - channel * 0x1000;
    }
    for (uint8_t channel = CHANNELS - 1; channel > 0; --channel) {
        write(brightness[channel], CMD_CHANNEL);
    }
    write(brightness[0], CMD_GLOBAL);
}


void led_loop()
{
}


void write(const uint16_t data, const uint8_t command)
{
    uint16_t latch = 1 << (command - 1);
    for (uint16_t bit = 0x8000; bit; bit >>= 1) {
        // Set the next bit on SDO
        if (bit & data) {
            SDO_PORT |= _BV(SDO_PIN);
        } else {
            SDO_PORT &= ~_BV(SDO_PIN);
        }
        // Set LE high when needed
        if (bit & latch) {
            LATCH_PORT |= _BV(LATCH_PIN);
        }
        // Clock pulse
        CLK_PORT |= _BV(CLK_PIN);
        CLK_PORT &= ~_BV(CLK_PIN);
    }
    // Set LE low
    LATCH_PORT &= ~_BV(LATCH_PIN);
}
