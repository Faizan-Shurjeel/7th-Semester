library ieee;
use ieee.std_logic_1164.all;

entity FA is port(
	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
	
	sum: out std_logic;
	carry: out std_logic
);end FA;

architecture kuchbhi of FA is
	signal t0,t1 : std_logic := '0'; -- := "00"
	signal t2 : std_logic;
begin
	t0 <= a xor b;
	sum <= c xor t0;
	t1 <= t0 and c;
	t2 <= a and b;
	carry <= t1 or t2;
	

end kuchbhi;