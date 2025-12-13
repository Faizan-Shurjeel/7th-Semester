library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_Unsigned.ALL;

entity trafficController is
    Port ( 
        clk    : in  STD_LOGIC;
        btn    : in  STD_LOGIC;
        red    : out STD_LOGIC;
        yellow : out STD_LOGIC;
        green  : out STD_LOGIC;
		  stateC	: out STD_logic_vector(3 downto 0);
		  stateN	: out STD_logic_vector(3 downto 0);
		  stateP	: out STD_logic_vector(3 downto 0);
        PDLED  : out STD_LOGIC
    );
end trafficController;

architecture Behavioral of trafficController is
    signal counter  : std_logic_vector (31 downto 0) := x"00000000";
    signal slk1, slk3, slk10 : std_logic := '0';
    signal   stateCurrent	: STD_logic_vector(3 downto 0);
	 signal  statePrvious	:STD_logic_vector(3 downto 0);
    signal  stateNext 		:STD_logic_vector(3 downto 0);
	 -- FSM States
    type state_type is (RR, YR, GR, RG);
--	 constatnt RR : std_logic_vector(3 downto 0):="1000";
--	 
    signal state, next_state, prevState : state_type;
    
begin
    slk1  <= counter(25);
    slk3  <= counter(27);
    slk10 <= counter(29);
    stateC <= stateCurrent;
	 stateP <= statePrvious;	
	 stateN <= stateNext;
	 
    -----------slow clocks
    process(clk) 
    begin 
        if(rising_edge(clk)) then 
            counter <= counter + 1; 
        end if;
    end process;
    
	 
	 process(clk, state)
    begin
        if rising_edge(clk) then
            case state is
                when RR => stateCurrent <= "0001";
                when YR => stateCurrent <= "0010";
                when GR => stateCurrent <= "0100";
                when RG => stateCurrent <= "1000";
            end case;
        end if;
    end process;
	 
	 process(clk, next_state)
    begin
        if rising_edge(clk) then
            case next_state is
                when RR => stateNext <= "0001";
                when YR => stateNext <= "0010";
                when GR => stateNext <= "0100";
                when RG => stateNext <= "1000";
            end case;
        end if;
    end process;
	 
	 
	 process(clk, prevState)
    begin
        if rising_edge(clk) then
            case prevState is
                when RR => statePrvious <= "0001";
                when YR => statePrvious <= "0010";
                when GR => statePrvious <= "0100";
                when RG => statePrvious <= "1000";
            end case;
        end if;
    end process;	 
	 
	-- OFL 
    process(clk, state)
    begin
        if rising_edge(clk) then
            case state is
                when RR => 
                    red    <= '1';
                    yellow <= '0';
                    green  <= '0';
                    PDLED  <= '0';
                    
                when YR =>
                    red    <= '0';
                    yellow <= '1';
                    green  <= '0';
                    PDLED  <= '0';
                    
                when GR =>
                    red    <= '0';
                    yellow <= '0';
                    green  <= '1';
                    PDLED  <= '0';
                    
                when RG =>
                    red    <= '1';
                    yellow <= '0';
                    green  <= '0';
                    PDLED  <= '1';
            end case;
        end if;
    end process;
	 
--=================================================    
  process(state, clk)
	begin
    if rising_edge(clk) then
        case state is
            when RR =>
                if btn = '1' then
                    next_state <= RG;
                else  
                    next_state <= YR;
                end if;
                prevState <= RR;  -- Update here
                
            when YR =>  
                if btn = '1' then
                    next_state <= RG;
                elsif prevState = RR then
                    next_state <= GR;
                else 
                    next_state <= RR;
                end if;
                
            when GR => 
                next_state <= YR;
                prevState <= GR;  
                
            when RG =>
					 if btn = '1' then
						next_state <= state;
                else 
						next_state <= RR;
					 end if;
        end case;
    end if;
end process;
  
--=================================================
    process(clk)
    begin
        if rising_edge(clk) then
            state <= next_state;
        end if;
    end process;
    
end Behavioral;