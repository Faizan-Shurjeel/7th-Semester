/*
 * PCF8574_LCD.h
 *
 *  Created on: 01-Oct-2025
 *      Author: shall
 */

#ifndef MAIN_PCF8574_LCD_H_
#define MAIN_PCF8574_LCD_H_

void PCF8574_LCD_init();
void lcd_command(uint8_t command);
void lcd_data(uint8_t data);
void cursor_position(char r, char c);
void lcd_print(char *dat);
void delay_ms(unsigned int ms);



#endif /* MAIN_PCF8574_LCD_H_ */
