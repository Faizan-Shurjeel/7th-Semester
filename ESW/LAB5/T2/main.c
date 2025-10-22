#include "freertos/FreeRTOS.h" 

#include "freertos/task.h" 
#include "driver/gpio.h" 
#include "PCF8574_LCD.c" 
#include "DS1307.c" 
#include <stdio.h> 
#define LCD_CMD_CLEAR_DISPLAY 0x01
typedef unsigned char UCHAR; 
typedef unsigned int UINT; 
//RTC time and date variables 

UCHAR hrs, min, sec, day, date, month, year;

// Delay for milliseconds   

void delay_ms(unsigned int ms){ 
vTaskDelay(pdMS_TO_TICKS(ms));   
} 

//function to convert decimal number to BCD format 
UCHAR dec2bcd(UCHAR num){ 
return(((num/10)*6)+num); 
} 
//end dec2bcd

//function to set new time, day and date in DS1307 
void Set_Time(UCHAR h,UCHAR m,UCHAR s){ 
  WR_DS1307(0,dec2bcd(s)&0x7F); //write seconds with CH=0
  WR_DS1307(1,dec2bcd(m));       //write minutes
  WR_DS1307(2,dec2bcd(h));       //write hours 
} //end Set_Time
 
//function to get updated time from DS1307 
void Get_Time(){ 
  sec   = RD_DS1307(0);       
  min   = RD_DS1307(1);
  hrs   = RD_DS1307(2);
  day   = RD_DS1307(3);
  date  = RD_DS1307(4);
  month = RD_DS1307(5);
  year  = RD_DS1307(6);
}
//end Get_Time 
 
//function displays time, day and date on 44780 LCD 
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
        case 1:  lcd_print("Jan"); break;
        case 2:  lcd_print("Feb"); break;
        case 3:  lcd_print("Mar"); break;
        case 4:  lcd_print("Apr"); break;
        case 5:  lcd_print("May"); break;
        case 6:  lcd_print("Jun"); break;
        case 7:  lcd_print("Jul"); break;
        case 8:  lcd_print("Aug"); break;
        case 9:  lcd_print("Sep"); break;
        case 10: lcd_print("Oct"); break;
        case 11: lcd_print("Nov"); break;
        case 12: lcd_print("Dec"); break;
    }
}

void Display_Year(){
    lcd_data('2');
    lcd_data('0');
    lcd_data((year>>4)+48);
    lcd_data((year&0x0F)+48);
}

 
/******************************************************************************/ 
void app_main() { 
PCF8574_LCD_init();      // Initialize LCD
DS1307_i2c_init();       // Initialize DS1307 I2C
   //UCHAR buff[20];      
    // ---------------- ALARM VARIABLES ----------------
UCHAR alarm_sec = 0x50;
UCHAR alarm_min = 0x59;
UCHAR alarm_hrs = 0x12;
UCHAR alarm_day = 0x02;
UCHAR alarm_date = 0x15;
UCHAR alarm_month = 0x10;
UCHAR alarm_year = 0x24;

// ---------------- GPIO SETUP ----------------
gpio_set_direction(2, GPIO_MODE_OUTPUT);   // LED pin
gpio_set_direction(4, GPIO_MODE_INPUT);    // Pushbutton
gpio_pullup_en(4);

// ---------------- MAIN LOOP ----------------
for(;;){
    Get_Time();

    // Line 1: Time
    cursor_position(0, 0);
    Display_Time();

    // Line 2: Day of week
    cursor_position(1, 0);
    lcd_print(getDayName(day));

    // Line 3: Date (DD Mon)
    cursor_position(2, 0);
    Display_Date();

    // Line 4: Year
    cursor_position(3, 0);
    Display_Year();

    // ------------- ALARM CHECK -------------
    if(sec   == alarm_sec  &&
       min   == alarm_min  &&
       hrs   == alarm_hrs  &&
       day   == alarm_day  &&
       date  == alarm_date &&
       month == alarm_month &&
       year  == alarm_year){

        gpio_set_level(2, 1);  // Blink LED
        delay_ms(200);
        gpio_set_level(2, 0);
    }

    // ----------- PUSHBUTTON CHECK ----------
    if(gpio_get_level(4) == 0){
        lcd_command(LCD_CMD_CLEAR_DISPLAY);

        cursor_position(0,0);
        lcd_print("ALARM:");

        cursor_position(1,0);
        // Print alarm time in hh:mm:ss
        lcd_data((alarm_hrs>>4)+48);
        lcd_data((alarm_hrs&0x0F)+48);      
        lcd_data(':');
        lcd_data((alarm_min>>4)+48);
        lcd_data((alarm_min&0x0F)+48);
        lcd_data(':');
        lcd_data((alarm_sec>>4)+48);
        lcd_data((alarm_sec&0x0F)+48);

        delay_ms(1000);
        lcd_command(LCD_CMD_CLEAR_DISPLAY);
    }

    delay_ms(1000);
}

	   }
	   
	  /*### **ESP32 to DS1307 RTC:**
```
ESP32 GPIO 18  →  DS1307 SCL
ESP32 GPIO 19  →  DS1307 SDA
ESP32 3.3V     →  DS1307 VCC
ESP32 GND      →  DS1307 GND
```

### **ESP32 to PCF8574 LCD (I2C):**
```
ESP32 GPIO 22  →  PCF8574 SCL
ESP32 GPIO 23  →  PCF8574 SDA
ESP32 5V       →  PCF8574 VCC (LCD needs 5V)
ESP32 GND      →  PCF8574 GND
```

### **ESP32 to LED:**
```
ESP32 GPIO 2   →  LED Anode (+) → 220Ω Resistor → GND
```

### **ESP32 to Pushbutton:**
```
ESP32 GPIO 4   →  Pushbutton (one side)
Pushbutton (other side) → GND
(Internal pull-up enabled in code)
*/
       
       