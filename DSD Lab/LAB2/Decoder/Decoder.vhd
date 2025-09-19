LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Decoder IS
    PORT (
        Inn : out STD_LOGIC_VectOR(3 downTO 0);  -- 4 input lines
        SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0) -- 2-bit select lines
    );
END Decoder;

ARCHITECTURE structural OF Decoder IS
BEGIN
    PROCESS(SEL)
    BEGIN
        IF SEL = "00" THEN
            Inn <= "0001";
        ELSIF SEL = "01" THEN
            Inn <= "0010";
				ELSIF SEL = "10" THEN
            Inn <= "0100";
				ELSE  -- SEL = "11"
            Inn <= "1000";
        END IF;
    END PROCESS;
END structural;