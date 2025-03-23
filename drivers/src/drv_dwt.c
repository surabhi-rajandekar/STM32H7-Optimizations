#include <stdint.h>
#include "stm32h7xx.h"
#include "drv_crc.h"

void drv_dwt_init(void)
{
    if (!(CoreDebug->DEMCR & CoreDebug_DEMCR_TRCENA_Msk)) {
        CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk; // Enable DWT
    }
    DWT->CYCCNT = 0;       // Reset cycle counter
    DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;  // Enable cycle counter
}

uint32_t drv_dwt_getCycles(void) 
{
    return DWT->CYCCNT;
}