LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY lcd_controller IS
  PORT(
    clk         : IN  STD_LOGIC;  --system clock
    reset_n     : IN  STD_LOGIC;  --active low reinitializes lcd
    rw, rs, e   : OUT STD_LOGIC;  --read/write, setup/data, and enable for lcd
    lcd_data    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); --data signals for lcd
    line1_buffer : IN STD_LOGIC_VECTOR(127 downto 0);  -- Data for the top line of the LCD
    line2_buffer : IN STD_LOGIC_VECTOR(127 downto 0)   -- Data for the bottom line of the LCD
  );
END lcd_controller;

ARCHITECTURE controller OF lcd_controller IS
  TYPE CONTROL IS(power_up, initialize, ready, send, line1, line2, set_line1, set_line2);
  SIGNAL state      : CONTROL := power_up;
  SIGNAL clk_count  : INTEGER := 0; --event counter for timing
  SIGNAL ptr        : natural range 0 to 15 := 0; --character pointer (0 to 15)
  SIGNAL current_line : natural range 1 to 2 := 1; --track which line we're displaying
  CONSTANT freq     : INTEGER := 50; -- Adjust based on your clock frequency (50MHz)
  
  -- Internal signals that can be read
  SIGNAL rs_i : STD_LOGIC := '0';
  SIGNAL rw_i : STD_LOGIC := '0';
  SIGNAL e_i  : STD_LOGIC := '0';
  SIGNAL lcd_data_i : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
  
BEGIN

  -- Connect internal signals to outputs
  rs <= rs_i;
  rw <= rw_i;
  e <= e_i;
  lcd_data <= lcd_data_i;

PROCESS(clk, reset_n)
BEGIN
  IF(reset_n = '0') THEN
    state <= power_up;
    clk_count <= 0;
    ptr <= 0;
    current_line <= 1;
    rs_i <= '0';
    rw_i <= '0';
    e_i <= '0';
    lcd_data_i <= (OTHERS => '0');
    
  ELSIF(clk'EVENT AND clk = '1') THEN
  
    CASE state IS
    
      --wait 50 ms to ensure VDD has risen and required LCD wait is met
      WHEN power_up =>
        IF(clk_count < (50000 * freq)) THEN  --wait 50 ms
          clk_count <= clk_count + 1;
          e_i <= '0';
        ELSE
          clk_count <= 0;
          rs_i <= '0';
          rw_i <= '0';
          lcd_data_i <= "00110000";
          state <= initialize;
        END IF;
        
      --cycle through initialization sequence
      WHEN initialize =>
        clk_count <= clk_count + 1;
        IF(clk_count < (10 * freq)) THEN      --function set
          lcd_data_i <= "00111000";           --2-line mode, 5x8 font
          e_i <= '1';
          rs_i <= '0';
          rw_i <= '0';
        ELSIF(clk_count < (60 * freq)) THEN   --wait 50 us
          e_i <= '0';
        ELSIF(clk_count < (70 * freq)) THEN   --display on/off control
          lcd_data_i <= "00001100";           --display on, cursor off, blink off
          e_i <= '1';
        ELSIF(clk_count < (120 * freq)) THEN  --wait 50 us
          e_i <= '0';
        ELSIF(clk_count < (130 * freq)) THEN  --display clear
          lcd_data_i <= "00000001";
          e_i <= '1';
        ELSIF(clk_count < (2130 * freq)) THEN --wait 2 ms
          e_i <= '0';
        ELSIF(clk_count < (2140 * freq)) THEN --entry mode set
          lcd_data_i <= "00000110";           --increment mode, no shift
          e_i <= '1';
        ELSIF(clk_count < (2190 * freq)) THEN --wait 50 us
          e_i <= '0';
        ELSE
          clk_count <= 0;
          state <= ready;
        END IF;
        
      WHEN ready =>
        clk_count <= 0;
        ptr <= 0;
        current_line <= 1;
        state <= set_line1;
        
      --Set cursor to start of Line 1 (address 0x80)
      WHEN set_line1 =>
        IF(clk_count = 0) THEN
          rs_i <= '0';  --command mode
          rw_i <= '0';  --write
          lcd_data_i <= "10000000";  --DDRAM address 0x00 (Line 1 start)
          e_i <= '1';
          clk_count <= clk_count + 1;
        ELSIF(clk_count < (50 * freq)) THEN
          clk_count <= clk_count + 1;
          IF(clk_count = (25 * freq)) THEN
            e_i <= '0';
          END IF;
        ELSE
          clk_count <= 0;
          ptr <= 0;
          current_line <= 1;
          state <= line1;
        END IF;
        
      --Display Line 1 characters
      WHEN line1 =>
        IF(clk_count = 0) THEN
          rs_i <= '1';  --data mode
          rw_i <= '0';  --write
          --Extract character from buffer (MSB first)
          lcd_data_i <= line1_buffer(127 - ptr*8 downto 120 - ptr*8);
          clk_count <= clk_count + 1;
        ELSE
          state <= send;
        END IF;
        
      --Set cursor to start of Line 2 (address 0xC0)
      WHEN set_line2 =>
        IF(clk_count = 0) THEN
          rs_i <= '0';  --command mode
          rw_i <= '0';  --write
          lcd_data_i <= "11000000";  --DDRAM address 0x40 (Line 2 start)
          e_i <= '1';
          clk_count <= clk_count + 1;
        ELSIF(clk_count < (50 * freq)) THEN
          clk_count <= clk_count + 1;
          IF(clk_count = (25 * freq)) THEN
            e_i <= '0';
          END IF;
        ELSE
          clk_count <= 0;
          ptr <= 0;
          current_line <= 2;
          state <= line2;
        END IF;
        
      --Display Line 2 characters
      WHEN line2 =>
        IF(clk_count = 0) THEN
          rs_i <= '1';  --data mode
          rw_i <= '0';  --write
          --Extract character from buffer (MSB first)
          lcd_data_i <= line2_buffer(127 - ptr*8 downto 120 - ptr*8);
          clk_count <= clk_count + 1;
        ELSE
          state <= send;
        END IF;
        
      --Send data/command with proper enable pulse
      WHEN send =>
        IF(clk_count < (25 * freq)) THEN      --enable high for 25us
          e_i <= '1';
          clk_count <= clk_count + 1;
        ELSIF(clk_count < (50 * freq)) THEN   --enable low for 25us
          e_i <= '0';
          clk_count <= clk_count + 1;
        ELSE
          clk_count <= 0;
          
          --Determine next state based on current line
          IF(current_line = 1) THEN
            IF(ptr < 15) THEN
              ptr <= ptr + 1;
              state <= line1;
            ELSE
              --Finished line1, move to line2
              state <= set_line2;
            END IF;
          ELSE  -- current_line = 2
            IF(ptr < 15) THEN
              ptr <= ptr + 1;
              state <= line2;
            ELSE
              --Finished line2, go back to ready
              state <= ready;
            END IF;
          END IF;
        END IF;
        
      WHEN OTHERS =>
        state <= power_up;
        
    END CASE;
  END IF;
END PROCESS;
END controller;