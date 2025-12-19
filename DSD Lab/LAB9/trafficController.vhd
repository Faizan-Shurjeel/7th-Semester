library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Use the modern, standard library for any future arithmetic needs
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_Unsigned.ALL;

entity trafficController is
    Port ( 
        clk    : in  STD_LOGIC;
        rst    : in  STD_LOGIC; -- Added a reset signal
        btn    : in  STD_LOGIC;
        red    : out STD_LOGIC;
        yellow : out STD_LOGIC;
        green  : out STD_LOGIC;
		  state_out : out STD_LOGIC_VECTOR(2 downto 0); -- vector output for the state
        PDLED  : out STD_LOGIC
    );
end trafficController;

architecture Behavioral of trafficController is
	 
	 -- FSM States. More descriptive and added a state to remove `prevState`
    type state_type is (RR, YR, GR, YYR,PD); 
    signal state, next_state : state_type;
	 
	 
	 signal counter  : std_logic_vector (31 downto 0) := x"00000000";
    signal slk1, slk3, slk10 : std_logic := '0';
    
begin
    slk1  <= counter(25);
    slk3  <= counter(27);
    slk10 <= counter(29);
	
    -----------slow clocks
    process(clk) 
    begin 
        if(rising_edge(clk)) then 
            counter <= counter + 1; 
        end if;
    end process;
    
	 
    process(clk, rst)
    begin
        if (rst = '1') then
            state <= RR;
        elsif rising_edge(clk) then
				state <= next_state;
        end if;
    end process;
    
    process(state, btn, slk1, slk3, slk10)
    begin
        -- Default assignments for all outputs to avoid latches
        red    <= '0';
        yellow <= '0';
        green  <= '0';
        PDLED  <= '0';

        -- Default next state is the current state (to handle unspecified transitions)
        next_state <= state;
        
        case state is
            when RR => 
                red <= '1'; 
					 
					 if slk1 = '1'  then
						if (btn = '1') then
							next_state <= PD;
						else  
							next_state <= YR;
						end if;
					 end if;
                   
            when YR =>
                yellow <= '1'; 
					 
					 if slk1 = '1'  then
						if (btn = '1') then
							next_state <= PD;
						else
							next_state <= GR;
						end if;
					 end if;
              
            when GR => 
                green <= '1'; 
					 
					 if slk10 = '1'  then
						next_state <= YYR;
					 end if;
                   
            when YYR => -- returning yellow
                yellow <= '1'; 
					 
					 if slk1 = '1'  then
						next_state <= RR;
					 end if;

            when PD =>
                red   <= '1'; --
                PDLED <= '1'; 
					 
					 if slk3 = '1'  then
						if (btn = '0') then
							next_state <= RR;
						end if;
					 end if;
        end case;
    end process;
    
    with state select
        state_out <= "000" when RR,
                     "001" when YR,
                     "010" when GR,
                     "011" when YYR,
                     "100" when PD,
                     "111" when others;

end Behavioral;