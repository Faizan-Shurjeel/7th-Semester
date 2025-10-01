#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "PCF8574_LCD.h"
#include "DS1307.h"
#include <stdio.h>

typedef unsigned char UCHAR;
typedef unsigned int UINT;

//RTC time and date variables
UCHAR hrs, min, sec, day, date, month, year;

// Day and month name arrays
const char* day_names[] = {"", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
const char* month_names[] = {"", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};

// Delay for milliseconds
void delay_ms(unsigned int ms){
    vTaskDelay(pdMS_TO_TICKS(ms));
}

//function to convert decimal number to BCD format
UCHAR dec2bcd(UCHAR num){
    return(((num/10)*16)+(num%10));
}

//function to convert BCD to decimal (not strictly needed, but for completeness)
UCHAR bcd2dec(UCHAR num){
    return(((num>>4)*10)+(num&0x0F));
}

//function to set new time, day and date in DS1307
void Set_Time(UCHAR h, UCHAR m, UCHAR s) {
    WR_DS1307(0, dec2bcd(s) & 0x7F); // seconds with CH=0
    WR_DS1307(1, dec2bcd(m));         // minutes
    WR_DS1307(2, dec2bcd(h));         // hours
}

void Set_Date(UCHAR d, UCHAR dt, UCHAR mt, UCHAR yr) {
    WR_DS1307(3, dec2bcd(d));   // day of week (1-7)
    WR_DS1307(4, dec2bcd(dt));  // date (1-31)
    WR_DS1307(5, dec2bcd(mt));  // month (1-12)
    WR_DS1307(6, dec2bcd(yr));  // year (0-99)
}

//function to get updated time from DS1307
void Get_Time() {
    sec = RD_DS1307(0);
    min = RD_DS1307(1);
    hrs = RD_DS1307(2);
    day = RD_DS1307(3);
    date = RD_DS1307(4);
    month = RD_DS1307(5);
    year = RD_DS1307(6);
}

//function displays time on line 1
void Display_Time() {
    cursor_position(0, 0);
    lcd_print("Time: ");
    lcd_data((hrs >> 4) + 48);
    lcd_data((hrs & 0x0F) + 48);
    lcd_data(':');
    lcd_data((min >> 4) + 48);
    lcd_data((min & 0x0F) + 48);
    lcd_data(':');
    lcd_data((sec >> 4) + 48);
    lcd_data((sec & 0x0F) + 48);
}

//function displays day name on line 2
void Display_Day() {
    cursor_position(1, 0);
    lcd_print("Day: ");
    if (day >= 1 && day <= 7) {
        lcd_print(day_names[day]);
    }
}

//function displays date and month on line 3
void Display_Date() {
    cursor_position(2, 0);
    lcd_print("Date: ");
    lcd_data((date >> 4) + 48);
    lcd_data((date & 0x0F) + 48);
    lcd_data(' ');
    if ((month & 0x0F) + ((month >> 4) * 10) >= 1 && (month & 0x0F) + ((month >> 4) * 10) <= 12) {
        lcd_print(month_names[(month & 0x0F) + ((month >> 4) * 10)]);
    }
}

//function displays year on line 4
void Display_Year() {
    cursor_position(3, 0);
    lcd_print("Year: 20");
    lcd_data((year >> 4) + 48);
    lcd_data((year & 0x0F) + 48);
}

void app_main() {
    PCF8574_LCD_init();
    DS1307_i2c_init();
    
    lcd_clear();
    lcd_print("ESP32 DS1307 RTC");
    delay_ms(2000);
    lcd_clear();

    // Set initial time and date (adjust as needed)
    Set_Time(23, 59, 47);        // 23:59:47
    Set_Date(1, 25, 12, 24);     // Sunday, 25 Dec 2024
    
    for(;;) {
        Get_Time();
        Display_Time();
        Display_Day();
        Display_Date();
        Display_Year();
        delay_ms(1000);
    }
}