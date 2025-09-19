LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity NOT1a is port (
in1a: in std_logic;
out1a: out std_logic);
end NOT1a;

architecture behav of NOT1a is
begin
	out1a <= not in1a;
end behav;
