LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY FourBitAdder IS
    PORT (
        A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        C : IN STD_LOGIC;
        sum : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        cout : OUT STD_LOGIC);
END FourBitAdder;
ARCHITECTURE behavioral OF FourBitAdder IS
    COMPONENT bitadder IS
        PORT (
            A : IN STD_LOGIC;
            B : IN STD_LOGIC;
            C : IN STD_LOGIC;
            sum : OUT STD_LOGIC;
            cout : OUT STD_LOGIC);
    END COMPONENT;
    SIGNAL w1, w2, w3 : STD_LOGIC;
BEGIN
    unit1 : bitadder PORT MAP(A(0), B(0), C, sum(0), w1);
    unit2 : bitadder PORT MAP(A(1), B(1), w1, sum(1), w2);
    unit3 : bitadder PORT MAP(A(2), B(2), w2, sum(2), w3);
    unit4 : bitadder PORT MAP(A(3), B(3), w3, sum(3), cout);
END behavioral;