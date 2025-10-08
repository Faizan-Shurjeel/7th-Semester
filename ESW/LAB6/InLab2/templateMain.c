#include "include.c"
#define LED GPIO_NUM_2
// Delay for milliseconds
void delay_ms(unsigned int ms){
vTaskDelay(pdMS_TO_TICKS(ms));
}
/******************************************************************************/
void app_main() {
char buff[20];
char num;
gpio_set_direction(LED, GPIO_MODE_OUTPUT);
for(int j=0; j<6; j++){
gpio_set_level(LED, 1);
delay_ms(50);
gpio_set_level(LED, 0);
delay_ms(50);
}

PCF8574_LCD_init();
 Keypad_Config();

 cursor_position(0,5);
 lcd_print("Start");
 cursor_position(1,5);
 lcd_print("ESP32");

 delay_ms(1000);
 lcd_command(0x01); // clear display
 cursor_position(0,1);
 lcd_print("Key pressed:");

 for(;;){
num = Keypad_Read();
sprintf(buff,"%c ", num);
cursor_position(1,7);
lcd_print(buff);
}
} 