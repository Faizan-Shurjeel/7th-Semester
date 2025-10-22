/*
 * DS1307.c
 *
 *  Created on: Oct 21, 2025
 *      Author: Abdullah
 */




/*******************************************************************************
This file interfaces DS1307 RTC with ESP32 using software I2C.
Created By: Usman Rafique
Dated: Oct. 16, 2024
*******************************************************************************/
#define DS1307_I2C_DELAY 10 // microseconds delay for timing adjustment
// Define the GPIO pins
#define DS1307_I2C_SCL 22
#define DS1307_I2C_SDA 23
// Write Address of DS1307
#define DS1307_ADDR_W 0xD0
// Read Address of DS1307
#define DS1307_ADDR_R 0xD1
#define ACK 1 //ACK signal
#define NACK 0 //NACK signal
// Utility functions for I2C bit-banging
void DS1307_i2c_delay() {
 esp_rom_delay_us(DS1307_I2C_DELAY);
}
// I2C initialization function for DS1307
void DS1307_i2c_init() {
 gpio_set_direction(DS1307_I2C_SCL, GPIO_MODE_OUTPUT);
 gpio_set_direction(DS1307_I2C_SDA, GPIO_MODE_OUTPUT);
 gpio_set_level(DS1307_I2C_SCL, 1);
 gpio_set_level(DS1307_I2C_SDA, 1);
 gpio_pullup_dis(DS1307_I2C_SCL);
 gpio_pullup_dis(DS1307_I2C_SDA);
}
void DS1307_i2c_start() {
gpio_set_direction(DS1307_I2C_SCL, GPIO_MODE_OUTPUT);
 gpio_set_direction(DS1307_I2C_SDA, GPIO_MODE_OUTPUT);
 gpio_set_level(DS1307_I2C_SDA, 1);
gpio_set_level(DS1307_I2C_SCL, 1);
 DS1307_i2c_delay();
 gpio_set_level(DS1307_I2C_SDA, 0); // Start condition
 DS1307_i2c_delay();
 gpio_set_level(DS1307_I2C_SCL, 0);
}
void DS1307_i2c_stop() {
gpio_set_direction(DS1307_I2C_SCL, GPIO_MODE_OUTPUT);
 gpio_set_direction(DS1307_I2C_SDA, GPIO_MODE_OUTPUT);
 gpio_set_level(DS1307_I2C_SDA, 0);
 gpio_set_level(DS1307_I2C_SCL, 1);
 DS1307_i2c_delay();
 gpio_set_level(DS1307_I2C_SDA, 1); // Stop condition
 DS1307_i2c_delay();
}
//function generates I2C ACK
void DS1307_i2c_ack(){
gpio_set_direction(DS1307_I2C_SCL, GPIO_MODE_OUTPUT);
 gpio_set_direction(DS1307_I2C_SDA, GPIO_MODE_OUTPUT);
gpio_set_level(DS1307_I2C_SDA, 0);
 DS1307_i2c_delay();
gpio_set_level(DS1307_I2C_SCL, 1);
 DS1307_i2c_delay();
gpio_set_level(DS1307_I2C_SCL, 0);
 DS1307_i2c_delay();
} //end DS1307_i2c_ack
//function generates I2C NACK
void DS1307_i2c_nack(){
gpio_set_direction(DS1307_I2C_SCL, GPIO_MODE_OUTPUT);
 gpio_set_direction(DS1307_I2C_SDA, GPIO_MODE_OUTPUT);
gpio_set_level(DS1307_I2C_SDA, 1);
 DS1307_i2c_delay();
gpio_set_level(DS1307_I2C_SCL, 1);
 DS1307_i2c_delay();
gpio_set_level(DS1307_I2C_SCL, 0);
 DS1307_i2c_delay();
} //end DS1307_i2c_nack

//function to write an I2C packet
void DS1307_I2C_Write(uint8_t data){
uint8_t i;
gpio_set_direction(DS1307_I2C_SCL, GPIO_MODE_OUTPUT);
 gpio_set_direction(DS1307_I2C_SDA, GPIO_MODE_OUTPUT);
gpio_set_level(DS1307_I2C_SCL, 0);
 DS1307_i2c_delay();
for (i = 0; i < 8; i++) {
 if (data & 0x80) {
 gpio_set_level(DS1307_I2C_SDA, 1);
 DS1307_i2c_delay();
 }
 else {
 gpio_set_level(DS1307_I2C_SDA, 0);
 DS1307_i2c_delay();
 }
 gpio_set_level(DS1307_I2C_SCL, 1);
 DS1307_i2c_delay();
  DS1307_i2c_delay();

 data <<= 1;
 } //end for

gpio_set_level(DS1307_I2C_SCL, 0);
 DS1307_i2c_delay();
 gpio_set_level(DS1307_I2C_SDA, 0);
 DS1307_i2c_delay();

 //ignore ack from salve
 gpio_set_level(DS1307_I2C_SCL, 1);
 DS1307_i2c_delay();
 DS1307_i2c_delay();
 DS1307_i2c_delay();
 gpio_set_level(DS1307_I2C_SCL, 0);
} //end DS1307_I2C_Write
//function to read an I2C packet

uint8_t DS1307_I2C_Read(uint8_t j){
uint8_t i,in,byte;
in = 0;
byte = 0;
gpio_set_direction(DS1307_I2C_SCL, GPIO_MODE_OUTPUT);
gpio_set_direction(DS1307_I2C_SDA, GPIO_MODE_INPUT);
gpio_set_level(DS1307_I2C_SCL, 0);
DS1307_i2c_delay();
for(i=0; i<8; i++){
gpio_set_level(DS1307_I2C_SCL, 1);
 DS1307_i2c_delay();
byte <<= 1;
in = gpio_get_level(DS1307_I2C_SDA);
byte |= in;
 DS1307_i2c_delay();
} //end for
//send ACK if j = 1

if(j){
DS1307_i2c_ack();
} //end if
else{
 DS1307_i2c_nack();
 } //end else

return byte;
} //end DS1307_I2C_Read
//Function to write to any location of DS1307
void WR_DS1307(uint8_t add, uint8_t byte){
DS1307_i2c_start();
DS1307_I2C_Write(DS1307_ADDR_W);
DS1307_I2C_Write(add);
DS1307_I2C_Write(byte);
DS1307_i2c_stop();
} //end WR_DS1307
//Function to read from any location of DS1307

uint8_t RD_DS1307(uint8_t add){
uint8_t out;
DS1307_i2c_start();
DS1307_I2C_Write(DS1307_ADDR_W);
DS1307_I2C_Write(add);
DS1307_i2c_start();
DS1307_I2C_Write(DS1307_ADDR_R);
out = DS1307_I2C_Read(NACK);
return out;
} //end RD_DS1307