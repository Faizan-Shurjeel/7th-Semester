#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "esp_rom_sys.h"
#include "PCF8574_LCD.c"
#include "DS1307.c"
#include <stdio.h>
typedef unsigned char UCHAR;
typedef unsigned int UINT;
//RTC time and date variables
UCHAR hrs,min,sec;
/******************************************************************************/

// Include your LCD and DS1307 header files or paste their functions here
// For this example, I'm assuming the functions are available

// Function prototypes (from your provided files)
//extern void PCF8574_LCD_init(void);
//extern void lcd_print(char *dat);//extern void cursor_position(char r, char c);
//extern void lcd_command(uint8_t command);
//extern void DS1307_i2c_init(void);
//extern uint8_t RD_DS1307(uint8_t add);
//extern void WR_DS1307(uint8_t add, uint8_t byte);

// DS1307 Register addresses
#define SEC_REG 0x00
#define MIN_REG 0x01
#define HOUR_REG 0x02
#define DAY_REG 0x03
#define DATE_REG 0x04
#define MONTH_REG 0x05
#define YEAR_REG 0x06

// Day names array
const char* days[] = {"Sunday", "Monday", "Tuesday", "Wednesday", 
                      "Thursday", "Friday", "Saturday"};

// Month names array
const char* months[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun",
                        "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};

// Function to convert BCD to Decimal
uint8_t bcd_to_dec(uint8_t bcd) {
    return ((bcd >> 4) * 10) + (bcd & 0x0F);
}

// Function to convert Decimal to BCD
uint8_t dec_to_bcd(uint8_t dec) {
    return ((dec / 10) << 4) | (dec % 10);
}

// Function to initialize RTC with default values (optional - call once to set time)
void set_initial_time(void) {
    // Set initial time: 12:00:00
    WR_DS1307(SEC_REG, dec_to_bcd(0));
    WR_DS1307(MIN_REG, dec_to_bcd(0));
    WR_DS1307(HOUR_REG, dec_to_bcd(12)); // 12-hour format
    
    // Set initial date: Monday, 21 Oct 2025
    WR_DS1307(DAY_REG, 2); // 1=Sunday, 2=Monday, etc.
    WR_DS1307(DATE_REG, dec_to_bcd(21));
    WR_DS1307(MONTH_REG, dec_to_bcd(10)); // October
    WR_DS1307(YEAR_REG, dec_to_bcd(25)); // 2025
}

// Function to read and display time on LCD
void display_rtc_data(void) {
    uint8_t sec, min, hour, day, date, month, year;
    char buffer[25];
    
    // Read time from DS1307
    sec = bcd_to_dec(RD_DS1307(SEC_REG) & 0x7F);
    min = bcd_to_dec(RD_DS1307(MIN_REG));
    hour = bcd_to_dec(RD_DS1307(HOUR_REG) & 0x3F);
    
    // Read date from DS1307
    day = RD_DS1307(DAY_REG);
    date = bcd_to_dec(RD_DS1307(DATE_REG));
    month = bcd_to_dec(RD_DS1307(MONTH_REG));
    year = bcd_to_dec(RD_DS1307(YEAR_REG));
    
    // Line 1: Display Time (HH:MM:SS)
    cursor_position(0, 0);
    sprintf(buffer, "Time: %02d:%02d:%02d   ", hour, min, sec);
    lcd_print(buffer);
    
    // Line 2: Display Day Name
    cursor_position(1, 0);
    if (day >= 1 && day <= 7) {
        sprintf(buffer, "%-20s", days[day - 1]);
    } else {
        sprintf(buffer, "Invalid Day     ");
    }
    lcd_print(buffer);
    
    // Line 3: Display Date and Month
    cursor_position(2, 0);
    if (month >= 1 && month <= 12) {
        sprintf(buffer, "%02d %s 20%02d      ", date, months[month - 1], year);
    } else {
        sprintf(buffer, "%02d ??? 20%02d      ", date, year);
    }
    lcd_print(buffer);
    
    // Line 4: Display Year
    cursor_position(3, 0);
    sprintf(buffer, "Year: 20%02d        ", year);
    lcd_print(buffer);
}

void app_main(void) {
    // Initialize DS1307 I2C
    DS1307_i2c_init();
    
    // Initialize LCD (PCF8574 I2C)
    PCF8574_LCD_init();
    
    // Clear LCD
    lcd_command(0x01);
    vTaskDelay(pdMS_TO_TICKS(100));
    
    // Display initialization message
    cursor_position(0, 0);
    lcd_print("RTC Initializing...");
    vTaskDelay(pdMS_TO_TICKS(2000));
    
    // Uncomment the line below ONLY ONCE to set initial time
    // After setting time once, comment it out and reflash
    // set_initial_time();
    
    // Clear LCD
    lcd_command(0x01);
    vTaskDelay(pdMS_TO_TICKS(100));
    
    // Main loop - continuously update display
    while (1) {
        display_rtc_data();
        vTaskDelay(pdMS_TO_TICKS(1000)); // Update every 1 second
    }
}