LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FSM IS
    PORT (
    CLEAR, CLK , ENA , M: IN STD_LOGIC;
	 num: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ; 
	 
    Count_Index : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)  
	 
);
END FSM;

ARCHITECTURE Behavioral OF FSM IS
    
    COMPONENT sevenSegement
        PORT (
            bininput : IN std_logic_vector(3 DOWNTO 0);  
            cathodes : OUT std_logic_vector(6 DOWNTO 0)  
        );
    END COMPONENT;

    TYPE state_type IS (S0, S1, S2, S3, S4, S5, S6, S7);
    SIGNAL State, Nextstate : state_type;
    SIGNAL number : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";

    -- a different way: represent states as integer signals:
    -- signal State, Nextstate: integer range 0 to 6;
BEGIN
 
    sevenseg_decoder: sevenSegement
        PORT MAP (
            bininput => number,
            cathodes => Count_Index
        );

    PROCESS (CLK,State)
    BEGIN
        CASE State IS
            WHEN S0 => number <= "0000";
            WHEN S1 => number <= "0001";
            WHEN S2 => number <= "0010";
            WHEN S3 => number <= "0011";
            WHEN S4 => number <= "0100";
            WHEN S5 => number <= "0101";
            WHEN S6 => number <= "0110";
            WHEN S7 => number <= "0111";
            WHEN OTHERS => NULL; -- should not occur
        END CASE;

    END PROCESS;
    PROCESS (CLK,State)
    BEGIN
        CASE State IS
            WHEN S0 =>
                    Nextstate <= S1;
            
				WHEN S1 =>
                IF M = '0' THEN
                    Nextstate <= S2;
					 ElSE
                    Nextstate <= S3;	  
                END IF;
					 
            WHEN S2 =>
                IF M = '0' THEN
                    Nextstate <= S3;
					 ElSE
                    Nextstate <= S6;
                END IF;
					 
            WHEN S3 =>
                IF M = '0'  THEN
                    Nextstate <= S4;
					 ElSE
                    Nextstate <= S2;	  
                END IF;
					 
            WHEN S4 =>
                IF M = '0'  THEN
                    Nextstate <= S5;
					 ElSE
                    Nextstate <= S0;
                END IF;
					 
            WHEN S5 =>
                IF M = '0'  THEN
                    Nextstate <= S6;
					 ElSE
                    Nextstate <= S4;	  
                END IF;
					 
            WHEN S6 =>
                    Nextstate <= S7;
                
            WHEN S7 =>
                IF M = '0'  THEN
                    Nextstate <= S0;
					 ElSE
                    Nextstate <= S5;	  
                END IF;
            WHEN OTHERS => NULL; -- should not occur
        END CASE;
    END PROCESS;
   
	-- State Register
    PROCESS (CLK, CLEAR)
    BEGIN
        IF CLEAR = '1' THEN
            State <= S0;
        ELSIF rising_edge (CLK) THEN
				IF ENA = '1' Then
					State <= Nextstate;
					num <= number;
				ELSE State <= state;
				End IF;
        END IF;
    END PROCESS;
    
    -- Output assignment now handled by component instantiation
	 
END Behavioral;