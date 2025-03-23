#include <stdint.h>
#include "stm32h7xx.h"
#include "drv_crc.h"

void drv_crc_initClk(void)
{
    RCC->AHB4ENR |= RCC_AHB4ENR_CRCEN;
}

void drv_crc_initValue(uint32_t u32_initValue)
{
    /* Reset current value */
    CRC->INIT = 0UL;
    /* Set new init value */
    CRC->INIT = u32_initValue;
}

void drv_crc_setPolynomial(uint32_t u32_polynomial)
{
    /* Reset current value */
    CRC->POL = 0UL;
    /* Set new init value */
    CRC->POL = u32_polynomial;   
}

void drv_crc_resetCRCCalculation(void)
{
    CRC->CR |= (1U << CRC_CR_RESET_Pos);
}

void drv_crc_setCRCCalculation(void)
{
    CRC->CR |= (0U << CRC_CR_RESET_Pos);
}

uint32_t drv_crc_calculateCRC32Bit(uint32_t *pu32_data, uint32_t u32_size)
{
    //uint32_t u32_crc = 0UL;
    uint32_t u32_calcSize = 0UL;

    drv_crc_resetCRCCalculation();

    while(u32_calcSize < u32_size)
    {
        CRC->DR = *pu32_data;
        pu32_data++;
        u32_calcSize++;
    }

    return CRC->DR;
}
