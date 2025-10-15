/*
 * PCF8574_LCD.c
 *
 *  Created on: 01-Oct-2025
 *      Author: shall
 */


#include "driver/i2c.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <stdio.h>

// Pin config
#define I2C_MASTER_SCL_IO    22          
#define I2C_MASTER_SDA_IO    23          
#define I2C_MASTER_NUM       I2C_NUM_0 
#define I2C_MASTER_FREQ_HZ   400000
#define I2C_MASTER_TX_BUF_DISABLE 0
#define I2C_MASTER_RX_BUF_DISABLE 0

#define cmd_delay 500  
#define pulse_delay 10  
#define PCF8574_ADDR 0x27 

// LCD commands
#define LCD_CMD_CLEAR_DISPLAY 0x01 
#define LCD_CMD_RETURN_HOME   0x02 
#define LCD_CMD_ENTRY_MODE    0x06
#define LCD_CMD_DISPLAY_ON    0x0C
#define LCD_CMD_FUNCTION_SET  0x28

// Control bits
#define LCD_EN 0x04   
#define LCD_RW 0x02   
#define LCD_RS 0x01   

void delay_ms(unsigned int ms){
    vTaskDelay(pdMS_TO_TICKS(ms));
}

static void i2c_master_init(){
    i2c_config_t conf = {
        .mode = I2C_MODE_MASTER,
        .sda_io_num = I2C_MASTER_SDA_IO,
        .scl_io_num = I2C_MASTER_SCL_IO,
        .sda_pullup_en = GPIO_PULLUP_ENABLE,
        .scl_pullup_en = GPIO_PULLUP_ENABLE,
        .master.clk_speed = I2C_MASTER_FREQ_HZ
    };
    i2c_param_config(I2C_MASTER_NUM, &conf);
    i2c_driver_install(
        I2C_MASTER_NUM,
        conf.mode,
        I2C_MASTER_RX_BUF_DISABLE,
        I2C_MASTER_TX_BUF_DISABLE,
        0
    );
}

void pcf8574_write(uint8_t data){
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (PCF8574_ADDR << 1) | I2C_MASTER_WRITE, true);
    i2c_master_write_byte(cmd, data, true);
    i2c_master_stop(cmd);
    i2c_master_cmd_begin(I2C_MASTER_NUM, cmd, cmd_delay / portTICK_PERIOD_MS);
    i2c_cmd_link_delete(cmd);
}

void lcd_send_enable_pulse(uint8_t data){
    pcf8574_write(data | LCD_EN);
    vTaskDelay(pulse_delay / portTICK_PERIOD_MS);
    pcf8574_write(data & ~LCD_EN);
    vTaskDelay(pulse_delay / portTICK_PERIOD_MS);
}

void lcd_send(uint8_t value, bool isData){
    uint8_t high_nibble = (value & 0xF0);
    uint8_t low_nibble  = ((value << 4) & 0xF0);

    if (isData){
        high_nibble |= LCD_RS;
        low_nibble  |= LCD_RS;
    }

    lcd_send_enable_pulse(high_nibble);
    lcd_send_enable_pulse(low_nibble);
}

void lcd_command(uint8_t command){ lcd_send(command, false); }
void lcd_data(uint8_t data){ lcd_send(data, true); }

void PCF8574_LCD_init(){
    i2c_master_init();
    delay_ms(500);
    lcd_command(LCD_CMD_FUNCTION_SET);
    lcd_command(LCD_CMD_DISPLAY_ON);
    lcd_command(LCD_CMD_ENTRY_MODE);
    lcd_command(LCD_CMD_RETURN_HOME);
    lcd_command(LCD_CMD_CLEAR_DISPLAY);
}

void cursor_position(char r, char c){
    switch(r){
        case 0: lcd_command(0x80 + c); break;
        case 1: lcd_command(0xC0 + c); break;
        case 2: lcd_command(0x94 + c); break;
        case 3: lcd_command(0xD4 + c); break;
    }
}

void lcd_print(char *dat){
    while(*dat != '\0')
        lcd_data(*(dat++));
}


