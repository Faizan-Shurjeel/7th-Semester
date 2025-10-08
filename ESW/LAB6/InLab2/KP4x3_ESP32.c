/***********************************************************************
This file defines the functions that scan a 4x3 matrix keypad and return
the ASCII of that key.
CPU: ESP32
Written By: Engr. Usman Rafique
Dated: Nov. 05, 2024 
***********************************************************************/
// Define GPIO pins for rows and columns
#define R0 GPIO_NUM_13
#define R1 GPIO_NUM_12
#define R2 GPIO_NUM_14
#define R3 GPIO_NUM_27
#define C0 GPIO_NUM_26
#define C1 GPIO_NUM_25
#define C2 GPIO_NUM_33
#define KP_Delay 10 //keypad key press delay in milliseconds
// 4x3 Keypad layout

char keys[4][3] = {
 {'1', '2', '3'},
 {'4', '5', '6'},
 {'7', '8', '9'},
 {'*', '0', '#'}
};
// Initialize GPIOs
void Keypad_Config() {
 // Set rows as output and columns as input
esp_rom_gpio_pad_select_gpio(R0);
esp_rom_gpio_pad_select_gpio(R1);
esp_rom_gpio_pad_select_gpio(R2);
esp_rom_gpio_pad_select_gpio(R3);
esp_rom_gpio_pad_select_gpio(C0);
esp_rom_gpio_pad_select_gpio(C1);
esp_rom_gpio_pad_select_gpio(C2);
 gpio_set_direction(R0, GPIO_MODE_OUTPUT);
 gpio_set_direction(R1, GPIO_MODE_OUTPUT);
 gpio_set_direction(R2, GPIO_MODE_OUTPUT);
 gpio_set_direction(R3, GPIO_MODE_OUTPUT); 
// Default high
 gpio_set_level(R0, 1);
 gpio_set_level(R1, 1);
 gpio_set_level(R2, 1);
 gpio_set_level(R3, 1);
 gpio_set_direction(C0, GPIO_MODE_INPUT);
 gpio_set_direction(C1, GPIO_MODE_INPUT);
 gpio_set_direction(C2, GPIO_MODE_INPUT);
 // Enable pull-up resistors
 gpio_pullup_en(C0);
 gpio_pullup_en(C1);
 gpio_pullup_en(C2);
}
// Function to scan the keypad and return the key
char keypad_get_key() {
char c0, c1, c2;
//scan row0 only
 gpio_set_level(R0, 0);
gpio_set_level(R1, 1);
gpio_set_level(R2, 1);
 gpio_set_level(R3, 1);
 c0 = gpio_get_level(C0);
 c1 = gpio_get_level(C1);
 c2 = gpio_get_level(C2);

 if(c0==0 && c1==1 && c2==1)
 return(keys[0][0]);
 else if(c0==1 && c1==0 && c2==1)
 return(keys[0][1]);
 else if(c0==1 && c1==1 && c2==0)
 return(keys[0][2]);

 //scan row1 only
gpio_set_level(R0, 1);
gpio_set_level(R1, 0);
gpio_set_level(R2, 1);
 gpio_set_level(R3, 1);
 c0 = gpio_get_level(C0);
 c1 = gpio_get_level(C1);
 c2 = gpio_get_level(C2);

 if(c0==0 && c1==1 && c2==1)
 return(keys[1][0]);
 else if(c0==1 && c1==0 && c2==1)
 return(keys[1][1]);
 else if(c0==1 && c1==1 && c2==0)
 return(keys[1][2]);
//scan row2 only
 gpio_set_level(R0, 1);
gpio_set_level(R1, 1);
gpio_set_level(R2, 0);
 gpio_set_level(R3, 1);
 c0 = gpio_get_level(C0);
 c1 = gpio_get_level(C1);
 c2 = gpio_get_level(C2);

 if(c0==0 && c1==1 && c2==1)
 return(keys[2][0]);
 else if(c0==1 && c1==0 && c2==1)
 return(keys[2][1]);
 else if(c0==1 && c1==1 && c2==0)
 return(keys[2][2]);

 //scan row3 only
 gpio_set_level(R0, 1);
gpio_set_level(R1, 1);
gpio_set_level(R2, 1);

gpio_set_level(R3, 0);
 c0 = gpio_get_level(C0);
 c1 = gpio_get_level(C1);
 c2 = gpio_get_level(C2);

 if(c0==0 && c1==1 && c2==1)
 return(keys[3][0]);
 else if(c0==1 && c1==0 && c2==1)
 return(keys[3][1]);
 else if(c0==1 && c1==1 && c2==0)
 return(keys[3][2]);

 //this must be the very last statement
else
 return '\0'; // Return null if no key is pressed
}
// Task to display key presses
char Keypad_Read() {
 char key = '\0';

 while (key == '\0') {
 key = keypad_get_key();
 }
 vTaskDelay(pdMS_TO_TICKS(KP_Delay));
 return key;
}


