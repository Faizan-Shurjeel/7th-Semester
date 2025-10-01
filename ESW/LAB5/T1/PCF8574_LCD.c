#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "esp_rom_sys.h"
#include "PCF8574_LCD.h"

#define PCF8574_I2C_DELAY 10
#define PCF8574_I2C_SCL 21
#define PCF8574_I2C_SDA 19
#define PCF8574_ADDR 0x4E  // PCF8574 I2C address (0x27 << 1)

// LCD bit positions on PCF8574
#define RS 0  // P0
#define EN 2  // P2
#define D4 4  // P4
#define D5 5  // P5
#define D6 6  // P6
#define D7 7  // P7
#define BL 3  // P3 - Backlight

void pcf8574_i2c_delay() {
    esp_rom_delay_us(PCF8574_I2C_DELAY);
}

void pcf8574_i2c_init() {
    gpio_set_direction(PCF8574_I2C_SCL, GPIO_MODE_OUTPUT);
    gpio_set_direction(PCF8574_I2C_SDA, GPIO_MODE_OUTPUT);
    gpio_set_level(PCF8574_I2C_SCL, 1);
    gpio_set_level(PCF8574_I2C_SDA, 1);
}

void pcf8574_i2c_start() {
    gpio_set_direction(PCF8574_I2C_SDA, GPIO_MODE_OUTPUT);
    gpio_set_level(PCF8574_I2C_SDA, 1);
    gpio_set_level(PCF8574_I2C_SCL, 1);
    pcf8574_i2c_delay();
    gpio_set_level(PCF8574_I2C_SDA, 0);
    pcf8574_i2c_delay();
    gpio_set_level(PCF8574_I2C_SCL, 0);
}

void pcf8574_i2c_stop() {
    gpio_set_direction(PCF8574_I2C_SDA, GPIO_MODE_OUTPUT);
    gpio_set_level(PCF8574_I2C_SDA, 0);
    gpio_set_level(PCF8574_I2C_SCL, 1);
    pcf8574_i2c_delay();
    gpio_set_level(PCF8574_I2C_SDA, 1);
    pcf8574_i2c_delay();
}

void pcf8574_i2c_write_byte(uint8_t data) {
    gpio_set_direction(PCF8574_I2C_SDA, GPIO_MODE_OUTPUT);
    for (int i = 7; i >= 0; i--) {
        gpio_set_level(PCF8574_I2C_SDA, (data >> i) & 1);
        pcf8574_i2c_delay();
        gpio_set_level(PCF8574_I2C_SCL, 1);
        pcf8574_i2c_delay();
        gpio_set_level(PCF8574_I2C_SCL, 0);
    }
    // ACK bit
    gpio_set_direction(PCF8574_I2C_SDA, GPIO_MODE_INPUT);
    gpio_set_level(PCF8574_I2C_SCL, 1);
    pcf8574_i2c_delay();
    gpio_set_level(PCF8574_I2C_SCL, 0);
}

void pcf8574_write(uint8_t data) {
    pcf8574_i2c_start();
    pcf8574_i2c_write_byte(PCF8574_ADDR);
    pcf8574_i2c_write_byte(data);
    pcf8574_i2c_stop();
}

void lcd_pulse_enable(uint8_t data) {
    pcf8574_write(data | (1 << EN) | (1 << BL));
    vTaskDelay(pdMS_TO_TICKS(1));
    pcf8574_write((data & ~(1 << EN)) | (1 << BL));
    vTaskDelay(pdMS_TO_TICKS(1));
}

void lcd_write_4bits(uint8_t data) {
    uint8_t output = 0;
    output |= (data & 0x01) << D4;
    output |= ((data >> 1) & 0x01) << D5;
    output |= ((data >> 2) & 0x01) << D6;
    output |= ((data >> 3) & 0x01) << D7;
    output |= (1 << BL);
    lcd_pulse_enable(output);
}

void lcd_cmd(uint8_t cmd) {
    lcd_write_4bits(cmd >> 4);
    lcd_write_4bits(cmd & 0x0F);
    vTaskDelay(pdMS_TO_TICKS(2));
}

void lcd_data(uint8_t data) {
    uint8_t output = (1 << RS) | (1 << BL);
    
    // Upper nibble
    output |= (data >> 4 & 0x01) << D4;
    output |= (data >> 5 & 0x01) << D5;
    output |= (data >> 6 & 0x01) << D6;
    output |= (data >> 7 & 0x01) << D7;
    lcd_pulse_enable(output);
    
    // Lower nibble
    output = (1 << RS) | (1 << BL);
    output |= (data & 0x01) << D4;
    output |= (data >> 1 & 0x01) << D5;
    output |= (data >> 2 & 0x01) << D6;
    output |= (data >> 3 & 0x01) << D7;
    lcd_pulse_enable(output);
}

void PCF8574_LCD_init(void) {
    pcf8574_i2c_init();
    vTaskDelay(pdMS_TO_TICKS(50));
    
    // LCD initialization sequence
    lcd_write_4bits(0x03);
    vTaskDelay(pdMS_TO_TICKS(5));
    lcd_write_4bits(0x03);
    vTaskDelay(pdMS_TO_TICKS(1));
    lcd_write_4bits(0x03);
    vTaskDelay(pdMS_TO_TICKS(1));
    lcd_write_4bits(0x02);
    
    lcd_cmd(0x28); // 4-bit mode, 2 lines, 5x8 font
    lcd_cmd(0x0C); // Display on, cursor off
    lcd_cmd(0x06); // Entry mode: increment cursor
    lcd_cmd(0x01); // Clear display
    vTaskDelay(pdMS_TO_TICKS(2));
}

void cursor_position(uint8_t row, uint8_t col) {
    uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
    uint8_t address = 0x80 + row_offsets[row] + col;
    lcd_cmd(address);
}

void lcd_print(const char* str) {
    while(*str) {
        lcd_data(*str++);
    }
}

void lcd_clear(void) {
    lcd_cmd(0x01);
    vTaskDelay(pdMS_TO_TICKS(2));
}