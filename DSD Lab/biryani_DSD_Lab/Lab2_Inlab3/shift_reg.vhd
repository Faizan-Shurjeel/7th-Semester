library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
    port(
        Serial_In : in  std_logic;
        clock     : in  std_logic;
        shift     : in  std_logic;
        Q         : out std_logic
    );
end shift_reg;

architecture behv of shift_reg is
    signal S: std_logic_vector(3 downto 0) := "1010";
begin
    process(clock)
    begin
        if rising_edge(clock) then
            if shift = '1' then
                S <= Serial_In & S(3 downto 1);
            end if;
        end if;
    end process;

    -- output LSB (for shift right case)
    Q <= S(0);
    -- for shift left, output is MSB: Q <= S(3);
end behv;
