/****************************************************************************************
This .c file contains the I2C implementation for PCF8574 and 44780 LCD functions to print
ASCII data on LCD.
CPU: ESP32
Written By: Usman Rafique
Dated: Oct. 04, 2024 Friday
****************************************************************************************/
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
// Define the GPIO pins
#define PCF8574_I2C_SCL 18
#define PCF8574_I2C_SDA 19
#define cmd_delay 20 //ms delay for command processing time
#define pulse_delay 10 //ms delay for signal active time
#define PCF8574_I2C_DELAY 10 // microseconds delay for timing adjustment
// I2C Address of the PCF8574
#define PCF8574_ADDR 0x4E
// LCD pins controlled by PCF8574
#define LCD_EN 0x04 // Enable bit
#define LCD_RW 0x02 // Read/Write bit (always 0 for writing)
#define LCD_RS 0x01 // Register select bit
// Utility functions for I2C bit-banging
void PCF8574_i2c_delay() {
 esp_rom_delay_us(PCF8574_I2C_DELAY);
}
// I2C initialization for PCF8574.
void PCF8574_i2c_init() {
 gpio_set_direction(PCF8574_I2C_SCL, GPIO_MODE_OUTPUT);
 gpio_set_direction(PCF8574_I2C_SDA, GPIO_MODE_OUTPUT);
 gpio_set_level(PCF8574_I2C_SCL, 1);
 gpio_set_level(PCF8574_I2C_SDA, 1);
 gpio_pullup_en(PCF8574_I2C_SCL);
 gpio_pullup_en(PCF8574_I2C_SDA);
}
void PCF8574_i2c_start() {
 gpio_set_level(PCF8574_I2C_SDA, 1);
 gpio_set_level(PCF8574_I2C_SCL, 1);
 PCF8574_i2c_delay();
 gpio_set_level(PCF8574_I2C_SDA, 0); // Start condition
 PCF8574_i2c_delay();
 gpio_set_level(PCF8574_I2C_SCL, 0);
}
void PCF8574_i2c_stop() {
 gpio_set_level(PCF8574_I2C_SDA, 0);
 gpio_set_level(PCF8574_I2C_SCL, 1);
 PCF8574_i2c_delay();
 gpio_set_level(PCF8574_I2C_SDA, 1); // Stop condition
 PCF8574_i2c_delay();
}
void PCF8574_i2c_write_bit(uint8_t bit) {
 gpio_set_level(PCF8574_I2C_SDA, bit);
 PCF8574_i2c_delay();
 gpio_set_level(PCF8574_I2C_SCL, 1);
 PCF8574_i2c_delay();
 gpio_set_level(PCF8574_I2C_SCL, 0);
}
uint8_t PCF8574_i2c_read_bit() {
 gpio_set_level(PCF8574_I2C_SDA, 1); // Release SDA to allow slave to control it
 PCF8574_i2c_delay();
 gpio_set_level(PCF8574_I2C_SCL, 1);
 PCF8574_i2c_delay();

uint8_t bit = gpio_get_level(PCF8574_I2C_SDA);
 gpio_set_level(PCF8574_I2C_SCL, 0);
 return bit;
}
void PCF8574_i2c_write_byte(uint8_t byte) {
 for (int i = 0; i < 8; i++) {
 PCF8574_i2c_write_bit((byte & 0x80) != 0); // Write MSB first
 byte <<= 1;
 }
 // Read ACK bit
 PCF8574_i2c_read_bit();
}
// Function to send a byte to the PCF8574 (for controlling the LCD)
void PCF8574_write(uint8_t data) {
 PCF8574_i2c_start();
 PCF8574_i2c_write_byte(PCF8574_ADDR);
 PCF8574_i2c_write_byte(data);
 PCF8574_i2c_stop();
}

// Send an enable pulse to the LCD
void lcd_send_enable_pulse(uint8_t data) {
 PCF8574_write(data | LCD_EN); // Enable high
 esp_rom_delay_us(100);
 PCF8574_write(data & ~LCD_EN); // Enable low
 esp_rom_delay_us(100);
}
// Send a command or data to the LCD
void lcd_send(uint8_t value, bool isData) {
 uint8_t high_nibble = (value & 0xF0); // High nibble
 uint8_t low_nibble = ((value << 4) & 0xF0); // Low nibble
 if (isData) {
 high_nibble |= LCD_RS;
 low_nibble |= LCD_RS;
 }
 // Send high nibble
lcd_send_enable_pulse(high_nibble);
 // Send low nibble
 lcd_send_enable_pulse(low_nibble);
}
// Send a command to the LCD
void lcd_command(uint8_t command) {
 lcd_send(command, false);
}
// Send data to the LCD
void lcd_data(uint8_t data) {
 lcd_send(data, true);
}
// Initialize the LCD
void lcd_init() {
vTaskDelay(pdMS_TO_TICKS(1000)); // Wait for LCD to power up
 lcd_command(0x28); // 4-bit mode, 2 lines, 5x7 dots
 lcd_command(0x0C); // display on, cursor off
 lcd_command(0x06); // cursor auto-right move
 lcd_command(0x02); // cursor at home
 lcd_command(0x01); // clear display
 vTaskDelay(pdMS_TO_TICKS(200));
}
//function sets the cursor position
void cursor_position(char r, char c){
 if(r==0) //row 0
lcd_command(0x80+c);
if(r==1) //row 1
lcd_command(0xC0+c);
if(r==2) //row 2
lcd_command(0x94+c);
if(r==3) //row 3
lcd_command(0xD4+c);
} //end cursor_position
//string write function
void lcd_print(char *dat){
//The # operator turns the argument it precedes into a quoted string.

#define mkstr(dat) #dat
while(*dat != '\0')
lcd_data(*(dat++)); //send single character to LCD
} //end lcd_print
//function configures PCF8574 to communicate with LCD. Must be called in main()
void PCF8574_LCD_init(){
PCF8574_i2c_init();
lcd_init();
}
