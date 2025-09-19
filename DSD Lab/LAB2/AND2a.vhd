LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity AND2a is port (
in1a, in2b: in std_logic; 
out1a: out std_logic
);
end AND2a;

architecture behav of AND2a is
begin
	out1a <= in1a and in2b;
end behav;
