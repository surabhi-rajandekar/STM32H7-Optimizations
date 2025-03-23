#include <stdint.h>

void drv_crc_initClk(void);
void drv_crc_initValue(uint32_t u32_initValue);
void drv_crc_resetCRCCalculation(void);
void drv_crc_setCRCCalculation(void);
uint32_t drv_crc_calculateCRC32Bit(uint32_t *pu32_data, uint32_t u32_size);