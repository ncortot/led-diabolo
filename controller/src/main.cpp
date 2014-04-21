#include <WProgram.h>
#include "isp.h"

extern "C" int main(void)
{
    SPCR.setSCK(14);
    isp_setup();

    while (true) {
        isp_loop();
    }
}
