#ifndef DS1307_H
#define DS1307_H

#include <stdint.h>

void DS1307_i2c_init(void);
void WR_DS1307(uint8_t add, uint8_t byte);
uint8_t RD_DS1307(uint8_t add);

#endif // DS1307_H