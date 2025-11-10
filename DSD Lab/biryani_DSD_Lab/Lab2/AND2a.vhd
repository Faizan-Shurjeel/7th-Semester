library ieee;
use ieee.std_logic_1164.all;

entity AND2a is
    port (
        in1a  : in  std_logic;
        in2b  : in  std_logic;
        out1a : out std_logic
    );
end AND2a;

architecture rtl of AND2a is
begin
    out1a <= in1a and in2b;
end rtl;
