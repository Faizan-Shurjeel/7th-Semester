#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "PCF8574_LCD.c"
// Delay for milliseconds
void delay_ms(unsigned int ms){
vTaskDelay(pdMS_TO_TICKS(ms));
}
/******************************************************************************/
void app_main() {
char buff[20];
 PCF8574_LCD_init();

 cursor_position(0,0);
 lcd_print("ABCDEFGHIJKLMNOPQRST");
cursor_position(1,0);
lcd_print("01234567890123456789");
cursor_position(2,0);
 lcd_print("abcdefghijklmnopqrst");
cursor_position(3,0);
 lcd_print("98765432109876543210");
for(;;);
}