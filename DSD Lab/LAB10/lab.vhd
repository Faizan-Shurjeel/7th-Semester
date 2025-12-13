--------------------------------------------------------------
-- SRAM Wrapper
--------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity lab is
	port( 
		CLK 		: in std_logic;
		mem 		: in std_logic;
		addr  	: in std_logic_vector(1 downto 0);
		datain	: in std_logic_vector(7 downto 0);
		WR			: in std_logic;
		dataout	: out std_logic_vector(7 downto 0)
	);
end lab;
--------------------------------------------------------------
architecture Behav of lab is
	
	-- Component Declaration
	component SRAM
		generic( 
			width: integer:=8;
			depth: integer:=4;
			addr: integer:=2
		);
		port( 
			Clock		: in std_logic;
			Enable	: in std_logic;
			Read		: in std_logic;
			Write		: in std_logic;
			Read_Addr : in std_logic_vector(addr-1 downto 0);
			Write_Addr: in std_logic_vector(addr-1 downto 0);
			Data_in	: in std_logic_vector(width-1 downto 0);
			Data_out	: out std_logic_vector(width-1 downto 0)
		);
	end component;
	
	-- Internal signals
	signal read_sig : std_logic;
	
begin

	-- Read is inverse of Write
	read_sig <= not WR;

	-- SRAM Port Map
	SRAM_inst: SRAM
	generic map (
		width => 8,
		depth => 4,
		addr => 2
	)
	port map (
		Clock 		=> CLK,
		Enable 		=> mem,
		Read 			=> read_sig,
		Write 		=> WR,
		Read_Addr 	=> addr,
		Write_Addr 	=> addr,
		Data_in 		=> datain,
		Data_out 	=> dataout
	);
	
end Behav;