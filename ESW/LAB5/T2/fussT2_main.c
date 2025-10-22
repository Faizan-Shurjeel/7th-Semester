#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "esp_rom_sys.h"
#include "PCF8574_LCD.c"
#include "DS1307.c"

typedef unsigned char UCHAR;
typedef unsigned int UINT;

// RTC time and date variables
UCHAR hrs, min, sec;

// DS1307 Register addresses
#define SEC_REG 0x00
#define MIN_REG 0x01
#define HOUR_REG 0x02
#define DAY_REG 0x03
#define DATE_REG 0x04
#define MONTH_REG 0x05
#define YEAR_REG 0x06

// LED and Button pins
#define LED_PIN 2
#define BUTTON_PIN 0

// Alarm variables (soft-coded)
uint8_t alarm_sec = 30;
uint8_t alarm_min = 0;
uint8_t alarm_hour = 12;
uint8_t alarm_day = 2;  // Monday
uint8_t alarm_date = 21;
uint8_t alarm_month = 10;  // October
uint8_t alarm_year = 25;   // 2025
int alarm_triggered = 0;

// Day names array
const char* days[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

// Month names array
const char* months[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};

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
    WR_DS1307(HOUR_REG, dec_to_bcd(12));  // 12-hour format
    // Set initial date: Monday, 21 Oct 2025
    WR_DS1307(DAY_REG, 2);  // 1=Sunday, 2=Monday, etc.
    WR_DS1307(DATE_REG, dec_to_bcd(21));
    WR_DS1307(MONTH_REG, dec_to_bcd(10));  // October
    WR_DS1307(YEAR_REG, dec_to_bcd(25));  // 2025
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
    sprintf(buffer, "Time: %02d:%02d:%02d ", hour, min, sec);
    lcd_print(buffer);
    // Line 2: Display Day Name
    cursor_position(1, 0);
    if (day >= 1 && day <= 7) {
        sprintf(buffer, "%-20s", days[day - 1]);
    } else {
        sprintf(buffer, "Invalid Day ");
    }
    lcd_print(buffer);
    // Line 3: Display Date and Month
    cursor_position(2, 0);
    if (month >= 1 && month <= 12) {
        sprintf(buffer, "%02d %s 20%02d ", date, months[month - 1], year);
    } else {
        sprintf(buffer, "%02d ??? 20%02d ", date, year);
    }
    lcd_print(buffer);
    // Line 4: Display Year
    cursor_position(3, 0);
    sprintf(buffer, "Year: 20%02d ", year);
    lcd_print(buffer);
}

// Function to display alarm data on LCD for 1 second
void display_alarm_data(void) {
    char buffer[25];
    // Line 1: Display Alarm Time (HH:MM:SS)
    cursor_position(0, 0);
    sprintf(buffer, "Alarm: %02d:%02d:%02d ", alarm_hour, alarm_min, alarm_sec);
    lcd_print(buffer);
    // Line 2: Display Day Name
    cursor_position(1, 0);
    if (alarm_day >= 1 && alarm_day <= 7) {
        sprintf(buffer, "%-20s", days[alarm_day - 1]);
    } else {
        sprintf(buffer, "Invalid Day ");
    }
    lcd_print(buffer);
    // Line 3: Display Date and Month
    cursor_position(2, 0);
    if (alarm_month >= 1 && alarm_month <= 12) {
        sprintf(buffer, "%02d %s 20%02d ", alarm_date, months[alarm_month - 1], alarm_year);
    } else {
        sprintf(buffer, "%02d ??? 20%02d ", alarm_date, alarm_year);
    }
    lcd_print(buffer);
    // Line 4: Display Year
    cursor_position(3, 0);
    sprintf(buffer, "Year: 20%02d ", alarm_year);
    lcd_print(buffer);
    vTaskDelay(pdMS_TO_TICKS(1000));
}

// LED flasher task
void led_flasher(void *pvParameters) {
    for (;;) {
        vTaskDelay(pdMS_TO_TICKS(500));
        if (alarm_triggered) {
            gpio_set_level(LED_PIN, gpio_get_level(LED_PIN) ? 0 : 1);
        }
    }
}

void app_main(void) {
    // Initialize DS1307 I2C
    DS1307_i2c_init();
    // Initialize LCD (PCF8574 I2C)
    PCF8574_LCD_init();
    // Initialize LED
    gpio_set_direction(LED_PIN, GPIO_MODE_OUTPUT);
    gpio_set_level(LED_PIN, 0);
    // Initialize Button
    gpio_set_direction(BUTTON_PIN, GPIO_MODE_INPUT);
    gpio_set_pull_mode(BUTTON_PIN, GPIO_PULLUP_ONLY);
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
    // Create LED flasher task
    xTaskCreate(led_flasher, "led_flasher", 2048, NULL, 5, NULL);
    // Button state tracking
    int last_button_state = 1;
    // Main loop - continuously update display
    while (1) {
        display_rtc_data();
        // Read current time/date for alarm check
        uint8_t curr_sec = bcd_to_dec(RD_DS1307(SEC_REG) & 0x7F);
        uint8_t curr_min = bcd_to_dec(RD_DS1307(MIN_REG));
        uint8_t curr_hour = bcd_to_dec(RD_DS1307(HOUR_REG) & 0x3F);
        uint8_t curr_day = RD_DS1307(DAY_REG);
        uint8_t curr_date = bcd_to_dec(RD_DS1307(DATE_REG));
        uint8_t curr_month = bcd_to_dec(RD_DS1307(MONTH_REG));
        uint8_t curr_year = bcd_to_dec(RD_DS1307(YEAR_REG));
        // Check if current time matches alarm
        if (curr_sec == alarm_sec &&
            curr_min == alarm_min &&
            curr_hour == alarm_hour &&
            curr_day == alarm_day &&
            curr_date == alarm_date &&
            curr_month == alarm_month &&
            curr_year == alarm_year) {
            alarm_triggered = 1;
        }
        // Check button press
        int current_button_state = gpio_get_level(BUTTON_PIN);
        if (current_button_state == 0 && last_button_state == 1) {
            display_alarm_data();
        }
        last_button_state = current_button_state;
        vTaskDelay(pdMS_TO_TICKS(1000));  // Update every 1 second
    }
}