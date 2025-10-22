#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "driver/adc.h"
#include "PCF8574_LCD.c"
#include "DS1307.c"
#include <stdio.h>

#define LCD_CMD_CLEAR_DISPLAY 0x01

typedef unsigned char UCHAR;
typedef unsigned int UINT;

// RTC time and date variables
UCHAR hrs, min, sec, day, date, month, year;

// LM35 ADC pin
#define LM35_PIN ADC1_CHANNEL_6

// Delay for milliseconds
void delay_ms(unsigned int ms){
    vTaskDelay(pdMS_TO_TICKS(ms));
}

// Function to convert decimal number to BCD format
UCHAR dec2bcd(UCHAR num){
    return (((num/10)<<4) + (num%10));
}
// end dec2bcd

// Function to set new time, day and date in DS1307
void Set_Time(UCHAR h,UCHAR m,UCHAR s){
    WR_DS1307(0,dec2bcd(s)&0x7F); //write seconds with CH=0
    WR_DS1307(1,dec2bcd(m)); //write minutes
    WR_DS1307(2,dec2bcd(h)); //write hours
} //end Set_Time

// Function to get updated time from DS1307
void Get_Time(){
    sec = RD_DS1307(0);
    min = RD_DS1307(1);
    hrs = RD_DS1307(2);
    day = RD_DS1307(3);
    date = RD_DS1307(4);
    month = RD_DS1307(5);
    year = RD_DS1307(6);
}
//end Get_Time

// Function displays time on 44780 LCD
void Display_Time(){
    lcd_data((hrs>>4)+48);
    lcd_data((hrs&0x0F)+48);
    lcd_data(':');

    lcd_data((min>>4)+48);
    lcd_data((min&0x0F)+48);
    lcd_data(':');

    lcd_data((sec>>4)+48);
    lcd_data((sec&0x0F)+48);

} //end Display_Time

/***************************************************/

char* getDayName(UCHAR d){

    UCHAR day_decimal = ((d>>4)*10) + (d&0x0F);
    switch(day_decimal){
        case 1: return "Sun";
        case 2: return "Mon";
        case 3: return "Tue";
        case 4: return "Wed";
        case 5: return "Thu";
        case 6: return "Fri";
        case 7: return "Sat";
        default: return "Err";
    }
}

void Display_Date(){
    lcd_data((date>>4)+48);
    lcd_data((date&0x0F)+48);
    lcd_print(" ");
    UCHAR month_decimal = ((month>>4)*10) + (month&0x0F);
    switch(month_decimal){
        case 1: lcd_print("Jan"); break;
        case 2: lcd_print("Feb"); break;
        case 3: lcd_print("Mar"); break;
        case 4: lcd_print("Apr"); break;
        case 5: lcd_print("May"); break;
        case 6: lcd_print("Jun"); break;
        case 7: lcd_print("Jul"); break;
        case 8: lcd_print("Aug"); break;
        case 9: lcd_print("Sep"); break;
        case 10: lcd_print("Oct"); break;
        case 11: lcd_print("Nov"); break;
        case 12: lcd_print("Dec"); break;
        default: lcd_print("Err"); break;
    }
    lcd_print(" ");
}

void Display_Year(){
    lcd_data('2');
    lcd_data('0');
    lcd_data((year>>4)+48);
    lcd_data((year&0x0F)+48);
}

/******************************************************************************/
void app_main() {
    PCF8574_LCD_init(); // Initialize LCD
    DS1307_i2c_init(); // Initialize DS1307 I2C

    // Initialize ADC for LM35
    adc1_config_width(ADC_WIDTH_BIT_12);
    adc1_config_channel_atten(LM35_PIN, ADC_ATTEN_DB_11);

    // ---------------- MAIN LOOP ----------------
    for(;;){
        Get_Time();

        // Line 1: Time and Temperature (timestamped)
        cursor_position(0, 0);
        Display_Time();

        // Read LM35
        int adc_val = adc1_get_raw(LM35_PIN);
        float voltage = adc_val * (3.3 / 4095.0);
        float temperature = voltage * 100.0;

        // Display temperature after time
        cursor_position(0, 8);
        char temp_str[10];
        sprintf(temp_str, "T:%.1fC", temperature);
        lcd_print(temp_str);

        // Line 2: Day of week
        cursor_position(1, 0);
        lcd_print(getDayName(day));

        // Line 3: Date and Month
        cursor_position(2, 0);
        Display_Date();

        // Line 4: Year
        cursor_position(3, 0);
        Display_Year();

        delay_ms(1000);
    }
}