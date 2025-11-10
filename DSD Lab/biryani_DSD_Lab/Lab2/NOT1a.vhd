library ieee;
use ieee.std_logic_1164.all;

entity NOT1a is
    port (
        in1a  : in  std_logic;
        out1a : out std_logic
    );
end NOT1a;

architecture rtl of NOT1a is
begin
    out1a <= not in1a;
end rtl;
