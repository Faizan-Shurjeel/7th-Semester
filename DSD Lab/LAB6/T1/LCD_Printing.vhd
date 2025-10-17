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
	 
	 --==============================================================================================
	
	type LCDdata is array (0 to 7) of STD_LOGIC_VECTOR(127 downTO 0);
	Signal ind : integer range 0 to 7 := 0;
	Signal LEDmem : LCDdata :=
	(
		X"4C494E45203120202020202020202020",  -- "LINE 1          " (Line 0 - even)
		X"454345204445504152544D454E542020", -- "HELLO WORLD     " (Line 1 - odd)
		X"4C494E45203220202020202020202020",  -- "LINE 2          " (Line 2 - even)
		X"444944204C4142204558455243495345", -- "DSD LAB EXERCISE" (Line 3 - odd)
		X"4C494E45203320202020202020202020",  -- "LINE 3          " (Line 4 - even)
		X"4C4344204449535041594C4159202020", -- "LCD DISPLAY     " (Line 5 - odd)
		X"4C494E45203420202020202020202020",  -- "LINE 4          " (Line 6 - even)
		X"454E44204F46204C4F4F502020202020"  -- "END OF LOOP     " (Line 7 - odd)
	);
	 
begin

process (ext_inp)
begin 
	if rising_edge(ext_inp) then
		top_line <= LEDmem(ind);
			bottom_line <= LEDmem(ind + 1);
			ind <= ind + 2;
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