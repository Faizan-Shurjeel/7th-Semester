idf_component_register(
    SRCS "main.c" "DS1307.c" "PCF8574_LCD.c"
    INCLUDE_DIRS "."
    REQUIRES driver
)