--------------------------------------------------------------
-- a simple 4*4 RAM module
--------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--------------------------------------------------------------
entity SRAM is --

generic( width: integer:=4;
			depth: integer:=4;
			addr_width: integer:=2 -- Renamed from 'addr' to avoid conflict with signal names
			);

port( 
		Clock: in std_logic;
		Enable: in std_logic;
		Read: in std_logic;
		Write: in std_logic;
		Read_Addr: in std_logic_vector(addr_width-1 downto 0);
		Write_Addr: in std_logic_vector(addr_width-1 downto 0);
		Data_in: in std_logic_vector(width-1 downto 0);
		Data_out: out std_logic_vector(width-1 downto 0)
);
end SRAM ; --SRAM
--------------------------------------------------------------
architecture behav of SRAM  is

-- use array to define the bunch of internal temparary signals
type ram_type is array (0 to depth-1) of
std_logic_vector(width-1 downto 0);
signal tmp_ram: ram_type;

begin
 -- Read Functional Section
 process(Clock) -- Removed 'Read' from sensitivity list (synchronous logic only needs Clock)
 begin
	if (Clock'event and Clock='1') then
		if Enable='1' then
			if Read='1' then
				Data_out <= tmp_ram(conv_integer(Read_Addr));
			else
				Data_out <= (Data_out'range => 'Z');
			end if;
		 end if;
	end if;
 end process;
 
 -- Write Functional Section
 process(Clock) -- Removed 'Write' from sensitivity list
 begin
	if (Clock'event and Clock='1') then
		if Enable='1' then
			if Write='1' then
				tmp_ram(conv_integer(Write_Addr)) <= Data_in;
			end if;
		end if;
	end if;
 end process;
end behav;