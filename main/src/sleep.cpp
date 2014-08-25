#include <Arduino.h>

#include <avr/power.h>
#include <avr/sleep.h>

#include "sleep.h"

volatile boolean sleep_state = false;
volatile boolean sleep_switch = false;

void sleep_isr();
void wait_switch();


inline void power_off()
{
    power_adc_disable();
}


inline void power_on()
{
    power_all_enable();
}


void sleep_setup()
{
    pinMode(POWER_SWITCH_PIN, INPUT_PULLUP);
    attachInterrupt(0, sleep_isr, LOW);
}


/**
 * Put the controller to sleep then wake up.
 */
void sleep_loop()
{
    if (sleep_switch != sleep_state) {
        wait_switch();
        sleep_state = true;

        set_sleep_mode(SLEEP_MODE_PWR_DOWN);
        cli();
        if (sleep_switch == sleep_state)
        {
            power_off();
            sleep_enable();
            sleep_bod_disable();
            sei();
            sleep_cpu();
            sleep_disable();
            power_on();
        }
        sei();

        wait_switch();
        sleep_state = false;
    }
}


/**
 * Power pushbutton interrupt routine.
 *
 * This interrupt serves both as a trigger to go to sleep and as
 * a wake-up interrupt.
 */
void sleep_isr()
{
    sleep_switch = !sleep_state;
}


/**
 * Wait for the power switch pin to go back up.
 */
void wait_switch()
{
    while (digitalRead(POWER_SWITCH_PIN) == LOW) {
        delay(100);
    }
}
