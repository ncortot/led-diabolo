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

void update();
void write(const uint16_t data, const uint8_t command);


void led_setup()
{
    // Set outputs low
    SDO_PORT &= ~_BV(SDO_PIN);
    CLK_PORT &= ~_BV(CLK_PIN);
    LATCH_PORT &= ~_BV(LATCH_PIN);

    // Enable output pins
    DDRC |= _BV(SDO_PIN) | _BV(CLK_PIN) | _BV(LATCH_PIN);

    // Turn all channels off
    write(0x0000, CMD_SWITCH);

    // LED1642GW configuration
    //   0x0400 = Auto power shutdown
    // LED current for R-EXT = 10k
    //   0x0053 = 20mA
    //   0x0048 = 15mA
    write(0x0448, CMD_CONFIG);

    // Testing
    write(0xffff, CMD_SWITCH);
}


void led_loop(uint8_t color)
{
    static const uint16_t step = 0x0080;
    static const uint16_t max = 0x0800;

    static uint16_t b = 0;
    static uint8_t d = 1;

    if (d == 1) {
        b += step;
        if (b > max) {
            d = -1;
        }
    } else {
        b -= step;
        if (b == 0) {
            d = 1;
        }
    }

    for (uint8_t channel = 0; channel < CHANNELS; ++channel) {
        if (channel % 3 == color) {
            brightness[channel] = b;
        } else {
            brightness[channel] = 0;
        }
    }

    update();
}


void update()
{
    for (uint8_t channel = CHANNELS - 1; channel > 0; --channel) {
        write(brightness[channel], CMD_CHANNEL);
    }
    write(brightness[0], CMD_GLOBAL);
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
