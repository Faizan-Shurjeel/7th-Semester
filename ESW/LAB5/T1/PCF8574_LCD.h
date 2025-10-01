#ifndef PCF8574_LCD_H
#define PCF8574_LCD_H

#include <stdint.h>

// Function declarations
void PCF8574_LCD_init(void);
void cursor_position(uint8_t row, uint8_t col);
void lcd_print(const char* str);
void lcd_data(uint8_t data);
void lcd_cmd(uint8_t cmd);
void lcd_clear(void);

#endif // PCF8574_LCD_H