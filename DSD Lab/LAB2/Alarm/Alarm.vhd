LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Alarm IS
    PORT (
    DOOR : IN STD_LOGIC;
    SBELT : IN STD_LOGIC;
    IGNITION : IN STD_LOGIC;
    WARNING : OUT STD_LOGIC
    );
END Alarm;

ARCHITECTURE structural OF Alarm IS
    -- Declarations
    COMPONENT AND2a PORT (in1a, in2b : IN STD_LOGIC;
        out1a : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT OR2a
        PORT (
            ina1, in2b : IN STD_LOGIC;
            out1a : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT NOT1a
        PORT (
            in1a : IN STD_LOGIC;
            out1a : OUT STD_LOGIC);
    END COMPONENT;

    -- declaration of signals used to interconnect gates
    SIGNAL DOOR_NOT, SBELT_NOT, B1, B2 : STD_LOGIC;
BEGIN
    -- Component instantiations statements
    U0 : NOT1a PORT MAP(DOOR, DOOR_NOT);
    U1 : NOT1a PORT MAP(SBELT, SBELT_NOT);
    U2 : AND2a PORT MAP(IGNITION, DOOR_NOT, B1);
    U3 : AND2a PORT MAP(IGNITION, SBELT_NOT, B2);
    U4 : OR2a PORT MAP(B1, B2, WARNING);
END structural;