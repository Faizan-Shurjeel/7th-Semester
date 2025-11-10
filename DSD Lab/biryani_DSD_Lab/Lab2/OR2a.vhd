library ieee;
use ieee.std_logic_1164.all;

entity OR2a is
    port (
        ina1  : in  std_logic;
        in2b  : in  std_logic;
        out1a : out std_logic
    );
end OR2a;

architecture rtl of OR2a is
begin
    out1a <= ina1 or in2b;
end rtl;
