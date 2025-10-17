library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LCD_Printing is
    port (
        clk         : in  std_logic;
        rst         : in  std_logic;
        lcd_e       : out std_logic;
        lcd_rs      : out std_logic;
        lcd_rw      : out std_logic;
		  ext_inp	  : in std_logic;
        lcd_db      : out std_logic_vector(7 downto 0)
    );
end LCD_Printing;

architecture Behavioral of LCD_Printing is

    -- Function to convert 4-bit hex digit to ASCII character
    function hex_digit_to_ascii(hex_digit : std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        case hex_digit is
            when "0000" => return x"30"; -- '0'
				
            when "0001" => return x"31"; -- '1'
            when "0010" => return x"32"; -- '2'
            when "0011" => return x"33"; -- '3'
            when "0100" => return x"34"; -- '4'
            when "0101" => return x"35"; -- '5'
            when "0110" => return x"36"; -- '6'
            when "0111" => return x"37"; -- '7'
            when "1000" => return x"38"; -- '8'
            when "1001" => return x"39"; -- '9'
            when "1010" => return x"41"; -- 'A'
            when "1011" => return x"42"; -- 'B'
            when "1100" => return x"43"; -- 'C'
            when "1101" => return x"44"; -- 'D'
            when "1110" => return x"45"; -- 'E'
            when "1111" => return x"46"; -- 'F'
            when others => return x"20"; -- space
        end case;
    end function;

    -- Function to convert 32-bit hex to 16 ASCII characters (128 bits)
    function hex_to_ascii_string(hex_value : std_logic_vector(31 downto 0)) return std_logic_vector is
        variable result : std_logic_vector(127 downto 0);
    begin
        -- Convert each 4-bit nibble to ASCII, MSB first
        for i in 0 to 7 loop
            result(127 - i*16 downto 120 - i*16) := hex_digit_to_ascii(hex_value(31 - i*4 downto 28 - i*4));
        end loop;
        -- Fill remaining 8 bytes with spaces
        for i in 8 to 15 loop
            result(127 - i*8 downto 120 - i*8) := x"20"; -- space
        end loop;
        return result;
    end function;

    COMPONENT lcd_controller IS
        PORT(
            clk         : IN    STD_LOGIC;
            reset_n     : IN    STD_LOGIC;
            rw, rs, e   : OUT   STD_LOGIC;
            lcd_data    : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
            line1_buffer : IN STD_LOGIC_VECTOR(127 downto 0);
            line2_buffer : IN STD_LOGIC_VECTOR(127 downto 0)
        );
    END COMPONENT;

    --==============================================================================================    
    -- "CUI LAHORE      " (16 chars)
    -- C=43, U=55, I=49, space=20, L=4C, A=41, H=48, O=4F, R=52, E=45
    signal top_line : std_logic_vector(127 downto 0) := 
        x"435549204C41484F5245202020202020";
        
    -- "ECE DEPARTMENT  " (16 chars)
    -- E=45, C=43, E=45, space=20, D=44, E=45, P=50, A=41, R=52, T=54, M=4D, E=45, N=4E, T=54
    signal bottom_line : std_logic_vector(127 downto 0) := 
        x"454345204445504152544D454E542020";
	 
	 -- Array of 32-bit hex values to display
    type hex_data_array is array (0 to 7) of std_logic_vector(31 downto 0);
    signal hex_values : hex_data_array := (
        x"DEADBEEF", -- Line 0
        x"12345678", -- Line 1
        x"ABCDEF01", -- Line 2
        x"87654321", -- Line 3
        x"FEDCBA98", -- Line 4
        x"13579BDF", -- Line 5
        x"2468ACE0", -- Line 6
        x"FFFFFFFF"  -- Line 7
    );
    
	 --==============================================================================================
	
	type LCDdata is array (0 to 7) of STD_LOGIC_VECTOR(127 downTO 0);
	Signal ind : integer range 0 to 7 := 0;
	Signal LEDmem : LCDdata :=
	(
		X"4C494E45203120202020202020202020",  -- "LINE 1          " (Line 0 - even)
		X"454345204445504152544D454E542020",  -- "ECE DEPARTMENT  " (Line 1 - odd)
		X"4C494E45203220202020202020202020",  -- "LINE 2          " (Line 2 - even)
		X"444944204C4142204558455243495345",  -- "DSD LAB EXERCISE" (Line 3 - odd)
		X"4C494E45203320202020202020202020",  -- "LINE 3          " (Line 4 - even)
		X"4C4344204449535041594C4159202020",  -- "LCD DISPLAY     " (Line 5 - odd)
		X"4C494E45203420202020202020202020",  -- "LINE 4          " (Line 6 - even)
		X"454E44204F46204C4F4F502020202020"   -- "END OF LOOP     " (Line 7 - odd)
	);
	 
begin

process (ext_inp)
begin 
	if rising_edge(ext_inp) then
		if ind < 6 then
			-- For even indices: show line labels
			top_line <= LEDmem(ind);
			-- For odd indices: show hex values converted to ASCII
			bottom_line <= hex_to_ascii_string(hex_values(ind + 1));
			ind <= ind + 2;
		else
			-- Reset to beginning
			ind <= 0;
		end if;
	end if;
end process;

    LCD: lcd_controller port map(
        clk => clk,
        reset_n => rst,
        e => lcd_e,
        rs => lcd_rs,
        rw => lcd_rw,
        lcd_data => lcd_db,
        line1_buffer => top_line,
        line2_buffer => bottom_line
    );

end Behavioral;