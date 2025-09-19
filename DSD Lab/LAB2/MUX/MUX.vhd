LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY MUX IS
    PORT (
        I0, I1, I2, I3 : IN STD_LOGIC;  -- 4 input lines
        SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);  -- 2-bit select lines
        Y : OUT STD_LOGIC  -- output
    );
END MUX;

ARCHITECTURE structural OF MUX IS
BEGIN
    PROCESS(I0, I1, I2, I3, SEL)
    BEGIN
        IF SEL = "00" THEN
            Y <= I0;
        ELSIF SEL = "01" THEN
            Y <= I1;
        ELSIF SEL = "10" THEN
            Y <= I2;
        ELSE  -- SEL = "11"
            Y <= I3;
        END IF;
    END PROCESS;
END structural;