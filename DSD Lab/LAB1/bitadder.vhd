LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY bitadder IS
    PORT (
        A : IN STD_LOGIC;
        B : IN STD_LOGIC;
        C : IN STD_LOGIC;
        sum : OUT STD_LOGIC;
        cout : OUT STD_LOGIC);
END bitadder;
ARCHITECTURE behavorial OF bitadder IS
BEGIN
    sum <= A XOR B XOR C;
    cout <= (A AND B) OR (A AND C) OR (B AND c);
END behavorial;