library ieee;
use ieee.std_logic_1164.all;

entity Alarm is
    port (
        DOOR     : in  std_logic;
        SBELT    : in  std_logic;
        IGNITION : in  std_logic;
        WARNING  : out std_logic
    );
end Alarm;

architecture structural of Alarm is
-- Declarations  
component AND2a  
port (in1a, in2b: in std_logic;  
out1a: out std_logic);  
end component;  
component OR2a  
port (ina1, in2b: in std_logic;  
out1a: out std_logic);  
end component;  
component NOT1a  
port (in1a: in std_logic;  
out1a: out std_logic);  
end component;  -- declaration of signals used to interconnect gates  
signal DOOR_NOT, SBELT_NOT, B1, B2: std_logic;  
begin  -- Component instantiations statements  
U0: NOT1a port map (DOOR, DOOR_NOT);  
U1: NOT1a port map (SBELT, SBELT_NOT);  
U2: AND2a port map (IGNITION, DOOR_NOT, B1);  
U3: AND2a port map (IGNITION, SBELT_NOT, B2);  
U4: OR2a port map (B1, B2, WARNING);  
end structural;