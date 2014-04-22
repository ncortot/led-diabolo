#include <WProgram.h>
#include "isp.h"

uint32_t monitor_delay = 0;

extern "C" int main(void)
{
    Serial.begin(19200);
    Serial1.begin(19200);
    SPCR.setSCK(14);
    isp_setup();

    while (true) {
        // Update the ISP status LEDs
        isp_loop();

        // Handle ISP commands
        if (Serial.available()) {
          avrisp();
          monitor_delay = millis() + 1000;
        }

        // Send data from the hardware serial to the USB serial
        if (millis() > monitor_delay) {
            while (!Serial.available() && Serial1.available()) {
                Serial.print((char) Serial1.read());
            }
        }
    }
}
