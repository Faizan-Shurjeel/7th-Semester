-- Behavioral model of a Mealy state machine: code converter w/ 2 processes  -- It is based on its state table. The output (Z) and next state are  -- computed before the active edge of the clock. The state change occurs on the rising edge of the clock.  
library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
entity Code_Converter is  
port(  
enable: in std_logic;  
X, CLK: in std_logic;  
Z: out std_logic);  
end Code_Converter;  
architecture Behavioral of Code_Converter is  
type state_type is (S0, S1, S2, S3, S4, S5, S6);  
signal State, Nextstate: state_type;  -- a different way: represent states as integer signals:  -- signal State, Nextstate: integer range 0 to 6;  
begin  -- Combinational Circuit  
process(State, X)
begin  
case State is  
when S0 => 
if X = '0' then Z <= '1'; Nextstate <= S1;  
else Z <= '0'; Nextstate <= S2; end if;  
when S1 =>  
if X = '0' then Z <= '1'; Nextstate <= S3;  
else Z <= '0'; Nextstate <= S4; end if;  
when S2 =>  
if X = '0' then Z <= '0'; Nextstate <= S4;  
else Z <= '1'; Nextstate <= S4; end if;  
when S3 =>  
if X = '0' then Z <= '0'; Nextstate <= S5;  
else Z <= '1'; Nextstate <= S5; end if;  
when S4 =>  
if X = '0' then Z <= '1'; Nextstate <= S5;  
else Z <= '0'; Nextstate <= S6; end if;  
when S5 =>  
if X = '0' then Z <= '0'; Nextstate <= S0;  
else Z <= '1'; Nextstate <= S0; end if;  
when S6 =>  
if X = '0' then Z <= '1'; Nextstate <= S0;  
else Z <= '0'; Nextstate <= S0; end if;  
when others => null; -- should not occur  
end case;  
end process;  -- State Register  
process (enable, CLK)  
begin  
if enable = '0' then  
State <= S0;  
elsif rising_edge (CLK) then  
State <= Nextstate;  
end if;  
end process;  
end Behavioral; 