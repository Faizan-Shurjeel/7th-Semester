LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY VendingMachine IS
    PORT (
        CLK : IN STD_LOGIC;
        CLEAR : IN STD_LOGIC;
        ENA : IN STD_LOGIC;
        bottle : IN STD_LOGIC;
        coins: IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        sel: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        changeOut : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
        despense : OUT STD_LOGIC;
        CashInsterted : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)  
    );
END VendingMachine;

ARCHITECTURE Behavioral OF VendingMachine IS
    
    COMPONENT sevenSegement
        PORT (
            bininput : IN std_logic_vector(3 DOWNTO 0);  
            cathodes : OUT std_logic_vector(6 DOWNTO 0)  
        );
    END COMPONENT;

    TYPE state_type IS (S0, S1, S2, S3);
    SIGNAL State, Nextstate : state_type;
    SIGNAL Total_Cash : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
    SIGNAL number : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL coin_value : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL product_cost : STD_LOGIC_VECTOR(3 DOWNTO 0);
    
BEGIN
 
    sevenseg_decoder: sevenSegement
        PORT MAP (
            bininput => Total_Cash(3 DOWNTO 0),
            cathodes => CashInsterted
        );

    -- Coin value decoder (combinational)
    PROCESS (coins)
    BEGIN
        CASE coins IS
            WHEN "0001" => 
                coin_value <= "0001"; -- 1 Rs
                number <= "0001";
            WHEN "0010" => 
                coin_value <= "0010"; -- 2 Rs
                number <= "0010";
            WHEN "0100" => 
                coin_value <= "0100"; -- 4 Rs
                number <= "0100";
            WHEN "1000" => 
                coin_value <= "1000"; -- 8 Rs
                number <= "1000";
            WHEN OTHERS => 
                coin_value <= "0000";
                number <= "0000";
        END CASE;
    END PROCESS;
    
    -- Product cost decoder (combinational)
    PROCESS (sel)
    BEGIN
        CASE sel IS
            WHEN "0001" => product_cost <= "0011"; -- Fanta: 3 Rs
            WHEN "0010" => product_cost <= "0100"; -- Cola : 4 Rs
            WHEN "0100" => product_cost <= "0101"; -- Sprite:5 Rs
            WHEN OTHERS => product_cost <= "0000"; -- No selection
        END CASE;
    END PROCESS;

    -- Next state logic (combinational)
    PROCESS (State, coins, sel, Total_Cash, product_cost, bottle)
    BEGIN
        -- Default assignment
        Nextstate <= State;
        
        CASE State IS
            WHEN S0 => -- Idle state
                IF coins /= "0000" THEN
                    Nextstate <= S1;
                ELSE
                    Nextstate <= S0;
                END IF;
                
            WHEN S1 => -- Coin insertion state
                IF coins /= "0000" THEN
                    Nextstate <= S1; -- Stay in S1 for more coins
                ELSIF sel /= "0000" THEN
                    Nextstate <= S2; -- Move to selection state
                ELSE
                    Nextstate <= S1; -- Wait for selection or more coins
                END IF;
                
            WHEN S2 => -- Selection made, check bottle and cash
                IF bottle = '1' THEN
                    IF Total_Cash >= product_cost THEN
                        Nextstate <= S3; -- Dispense
                    ELSE
                        Nextstate <= S1; -- Not enough money, return to coin insertion
                    END IF;
                ELSE
                    Nextstate <= S2; -- Wait for bottle confirmation
                END IF;
                
            WHEN S3 => -- Dispense state
                Nextstate <= S0; -- Return to idle
                
            WHEN OTHERS => 
                Nextstate <= S0;
        END CASE;
    END PROCESS;
   
    -- State register and cash management (sequential)
    PROCESS (CLK, CLEAR)
    BEGIN
        IF CLEAR = '1' THEN
            State <= S0;
            Total_Cash <= "000000";
        ELSIF rising_edge(CLK) THEN
            IF ENA = '1' THEN
                State <= Nextstate;
                
                -- Cash management based on current state
                CASE State IS
                    WHEN S0 => -- Idle state
                        IF coins /= "0000" THEN
                            Total_Cash <= "00" & coin_value; -- First coin (extend to 6 bits)
                        ELSE
                            Total_Cash <= "000000"; -- Keep reset
                        END IF;
                        
                    WHEN S1 => -- Adding more coins
                        IF coins /= "0000" THEN
                            Total_Cash <= Total_Cash + ("00" & coin_value); -- Add coin value
                        END IF;
                        
                    WHEN S3 => -- After dispensing
                        Total_Cash <= "000000"; -- Reset cash
                        
                    WHEN OTHERS =>
                        NULL; -- Keep current cash value
                END CASE;
            END IF;
        END IF;
    END PROCESS;
    
    -- Output logic (combinational)
    PROCESS (State, Total_Cash, product_cost)
    BEGIN
        -- Default values
        despense <= '0';
        changeOut <= "000000";
        
        CASE State IS
            WHEN S2 => -- In selection state, show change if not enough money
                IF Total_Cash < product_cost THEN
                    changeOut <= Total_Cash; -- Return all money
                ELSE
                    changeOut <= "000000";
                END IF;
                
            WHEN S3 => -- Dispense state
                despense <= '1';
                IF Total_Cash > ("00" & product_cost) THEN
                    changeOut <= Total_Cash - ("00" & product_cost); -- Calculate change
                ELSE
                    changeOut <= "000000";
                END IF;
                
            WHEN OTHERS =>
                despense <= '0';
                changeOut <= "000000";
        END CASE;
    END PROCESS;
    
END Behavioral;