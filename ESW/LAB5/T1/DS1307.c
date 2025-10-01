#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/i2c.h"
#include "DS1307.h"

#define I2C_MASTER_NUM I2C_NUM_0
#define I2C_MASTER_SDA_IO 23
#define I2C_MASTER_SCL_IO 22
#define I2C_MASTER_FREQ_HZ 100000
#define DS1307_ADDR 0x68  // 0xD0 >> 1

void DS1307_i2c_init(void) {
    i2c_config_t conf = {
        .mode = I2C_MODE_MASTER,
        .sda_io_num = I2C_MASTER_SDA_IO,
        .scl_io_num = I2C_MASTER_SCL_IO,
        .sda_pullup_en = GPIO_PULLUP_ENABLE,
        .scl_pullup_en = GPIO_PULLUP_ENABLE,
        .master.clk_speed = I2C_MASTER_FREQ_HZ,
    };
    i2c_param_config(I2C_MASTER_NUM, &conf);
    i2c_driver_install(I2C_MASTER_NUM, conf.mode, 0, 0, 0);
}

void WR_DS1307(uint8_t add, uint8_t byte) {
    uint8_t data[2] = {add, byte};
    i2c_master_write_to_device(I2C_MASTER_NUM, DS1307_ADDR, data, sizeof(data), pdMS_TO_TICKS(1000));
}

uint8_t RD_DS1307(uint8_t add) {
    uint8_t data;
    i2c_master_write_read_device(I2C_MASTER_NUM, DS1307_ADDR, &add, 1, &data, 1, pdMS_TO_TICKS(1000));
    return data;
}