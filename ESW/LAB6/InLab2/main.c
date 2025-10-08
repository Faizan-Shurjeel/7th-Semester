#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"

#define CLK 18
#define LOAD 19
#define D_IN 21

#define INTENS_VAL 0x0F
#define SCAN_DIGITS 8

#define DIG0 0x01
#define DIG1 0x02
#define DIG2 0x03
#define DIG3 0x04
#define DIG4 0x05
#define DIG5 0x06
#define DIG6 0x07
#define DIG7 0x08
#define DECODE 0x09
#define INTENS 0x0A
#define SCAN_LIMIT 0x0B
#define SHUT_DOWN 0x0C
#define DISPLAY_TEST 0x0F

typedef unsigned char UCHAR;
typedef unsigned int UINT;
typedef unsigned short USHORT;

void delay_ms(UINT ms) {
    vTaskDelay(pdMS_TO_TICKS(ms));
}

char codes[16] = {
    0x7E,0x30,0x6D,0x79,0x33,0x5B,0x5F,0x70,
    0x7F,0x7B,0x77,0x1F,0x4E,0x3D,0x4F,0x47
};

// Send 16-bit packet to MAX7219
void MAX7219_packet_write(char reg, char val){
    UINT packet = (((UINT)reg << 8) | (UINT)val);
    gpio_set_level(LOAD, 0);

    for (int i = 0; i < 16; i++) {
        if (packet & (0x8000 >> i))
            gpio_set_level(D_IN, 1);
        else
            gpio_set_level(D_IN, 0);

        gpio_set_level(CLK, 1);
        gpio_set_level(CLK, 0);
    }

    gpio_set_level(LOAD, 1);
    gpio_set_level(LOAD, 0);
}

// Configure MAX7219
void MAX7219_Config(){
    gpio_set_direction(D_IN, GPIO_MODE_OUTPUT);
    gpio_set_direction(LOAD, GPIO_MODE_OUTPUT);
    gpio_set_direction(CLK, GPIO_MODE_OUTPUT);

    gpio_set_level(CLK, 0);
    gpio_set_level(LOAD, 0);

    MAX7219_packet_write(SHUT_DOWN, 1);
    MAX7219_packet_write(DISPLAY_TEST, 0);
    MAX7219_packet_write(DECODE, 0x00);
    MAX7219_packet_write(INTENS, INTENS_VAL);
    MAX7219_packet_write(SCAN_LIMIT, SCAN_DIGITS - 1);
}

// Display 8 digits on MAX7219
void DisplayDigits(USHORT upCount, USHORT downCount){
    // Break upCount into 3 digits (right side)
    USHORT u0 = upCount % 10;
    USHORT u1 = (upCount / 10) % 10;
    USHORT u2 = (upCount / 100) % 10;

    // Break downCount into 3 digits (left side)
    USHORT d0 = downCount % 10;
    USHORT d1 = (downCount / 10) % 10;
    USHORT d2 = (downCount / 100) % 10;

    // Left side (DIG7–DIG5)
    MAX7219_packet_write(DIG7, codes[d2]);
    MAX7219_packet_write(DIG6, codes[d1]);
    MAX7219_packet_write(DIG5, codes[d0]);

    // Middle digits off
    MAX7219_packet_write(DIG4, 0x00);
    MAX7219_packet_write(DIG3, 0x00);

    // Right side (DIG2–DIG0)
    MAX7219_packet_write(DIG2, codes[u2]);
    MAX7219_packet_write(DIG1, codes[u1]);
    MAX7219_packet_write(DIG0, codes[u0]);
}

void app_main() {
    MAX7219_Config();

    USHORT upCount = 0;
    USHORT downCount = 999;

    while (1) {
        DisplayDigits(upCount, downCount);

        // Increment and decrement
        upCount++;
        if (upCount > 999) upCount = 0;

        downCount--;
        if (downCount < 0) downCount = 999;

        delay_ms(1000);
    }
}