#include <stdio.h>
#include <stdlib.h>
#include "drv_crc.h"
#include "drv_dwt.h"

#define BUFFER_SIZE (4U)

uint32_t au32_dataBuffer[BUFFER_SIZE] = 
{
    0xDEADBEEF,
    0xABCDCAFE,
    0xFEEDBACF,
    0xA0B0C0D0
};

int main()
{
    volatile uint32_t u32_crcValue = 0UL;
    drv_crc_initClk();
    drv_dwt_init();

    uint32_t start_cycles = drv_dwt_getCycles();


    u32_crcValue = drv_crc_calculateCRC32Bit(au32_dataBuffer, BUFFER_SIZE);

    uint32_t end_cycles = drv_dwt_getCycles();

    // Convert cycles to time (assuming 64 MHz CPU clock)
    uint32_t elapsed_cycles = end_cycles - start_cycles;
    volatile double time_us = (double)elapsed_cycles / 64.0;  // Convert to microseconds

    while(1);
    return 0;
}