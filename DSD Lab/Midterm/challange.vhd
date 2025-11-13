library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity challange is
		port (
	 CLEAR            : in std_logic;
    btn              : in std_logic;
    clk              : in std_logic;  -- 50 MHz system clock
    vehicle_red      : out std_logic;
    vehicle_yellow   : out std_logic;
    vehicle_green    : out std_logic;
    pedestrian_red   : out std_logic;
    pedestrian_green : out std_logic
		);
end challange;		

architecture behav of challange is 

type st is (s0,s1,s2);
signal state,nextstate : st := s0;

signal slowClock :std_logic :='0';
signal clockCounter : integer range 0 to 50000000 :=0;

signal i : integer range 0 to 2 :=0;
signal j : integer range 0 to 9 :=0;

begin


process(clk,clear,btn)
begin
if clear = '1' then
	i <=0;
	j <=0;
	state <= s0;

elsif rising_edge(clk) then
	state <= nextstate;
	case state is
	when s0 =>
			if btn = '1' then
			nextstate <= s1;
			else 
				nextstate <= s0;
			end if;
			i<= 0;
			j<= 0;
	when s1 =>
			if i = 2 then
				nextstate <= s2;
			else i<= i+1;
			end if;
	when s2 =>
		   if j = 9 then
				nextstate <= s0;
			else j<= j+1;
			end if;
	when others =>
				nextstate <= s0;
	end case;
end if;
end process;

process(state)
begin
case state is
	when s0 =>
	 vehicle_red  		<= '0';
	 vehicle_yellow  	<= '0';
    vehicle_green   	<= '1';
    pedestrian_red  	<= '1';
    pedestrian_green <= '0';
	when s1 =>
	 vehicle_red  		<= '0';
	 vehicle_yellow  	<= '1';
    vehicle_green   	<= '0';
    pedestrian_red  	<= '1';
    pedestrian_green <= '0';
	when s2 =>
	 vehicle_red  		<= '1';
	 vehicle_yellow  	<= '0';
    vehicle_green   	<= '0';
    pedestrian_red  	<= '0';
    pedestrian_green <= '1';
	when others =>
	 vehicle_red  		<= '0';
	 vehicle_yellow  	<= '0';
    vehicle_green   	<= '1';
    pedestrian_red  	<= '1';
    pedestrian_green <= '0';
	end case;
end process;

process(clk,clear)
begin
	if CLEAR = '1' then
		clockCounter <= 0;
		slowClock <= '0';
	else
		if rising_edge(clk) then
			if clockCounter = 49999999 then
				clockCounter <= 0;
				slowClock <= '1';
			
			else 
				clockCounter <= clockCounter +1;
				slowClock <= '0';
			end if;	
		end if;
	end if;	
end process;

end behav;

--LIBRARY IEEE;
--USE IEEE.STD_LOGIC_1164.ALL;
--USE IEEE.NUMERIC_STD.ALL;
--
--entity challange is port (
--    CLEAR            : in std_logic;
--    btn              : in std_logic;
--    clk              : in std_logic;  -- 50 MHz system clock
--    vehicle_red      : out std_logic;
--    vehicle_yellow   : out std_logic;
--    vehicle_green    : out std_logic;
--    pedestrian_red   : out std_logic;
--    pedestrian_green : out std_logic
--);
--end challange;
--
--architecture behav of challange is 
--    TYPE state_type IS (S0, S1, S2);
--    
--    signal i : integer range 0 to 2 := 0;   -- count to 3 seconds
--    signal j : integer range 0 to 9 := 0;  -- count to 10 seconds
--    signal state, nextstate : state_type := S0;
--    
--    -- Clock divider signals
--    signal sclk : std_logic := '0';
--    signal clk_counter : integer := 0;-- range 0 to 50000000 := 0;
--    
--begin
--
--    -- Clock divider: 50 MHz to 1 Hz (1 second period)
--    process(clk, CLEAR)
--    begin
--        if CLEAR = '1' then
--            clk_counter <= 0;
--            sclk <= '0';
--        elsif rising_edge(clk) then
--            if clk_counter = 49999999 then  -- 50M - 1 for 1 Hz
--                clk_counter <= 0;
--                sclk <= '1';
--            else
--                clk_counter <= clk_counter + 1;
--                sclk <= '0';
--            end if;
--        end if;
--    end process;
--
--
--    -- Output logic (Moore FSM - outputs depend only on state)
--    process(state)
--    begin
--        case state is
--            when S0 =>  -- Normal: Vehicle green, Pedestrian red
--                vehicle_yellow   <= '0';
--                vehicle_red      <= '0';
--                vehicle_green    <= '1';
--                pedestrian_red   <= '1';
--                pedestrian_green <= '0';
--                
--            when S1 =>  -- Transition: Vehicle yellow, Pedestrian red
--                vehicle_yellow   <= '1';
--                vehicle_red      <= '0';
--                vehicle_green    <= '0';
--                pedestrian_red   <= '1';
--                pedestrian_green <= '0';
--                
--            when S2 =>  -- Crossing: Vehicle red, Pedestrian green
--                vehicle_yellow   <= '0';
--                vehicle_red      <= '1';
--                vehicle_green    <= '0';
--                pedestrian_red   <= '0';
--                pedestrian_green <= '1';
--                
--            when others =>
--                vehicle_yellow   <= '0';
--                vehicle_red      <= '0';
--                vehicle_green    <= '1';
--                pedestrian_red   <= '1';
--                pedestrian_green <= '0';
--        end case;
--    end process;
--
--    -- State transition and counter logic (runs on 1 Hz clock)
--    process(sclk, CLEAR)
--    begin
--        if CLEAR = '1' then
--            state <= S0;
--            i <= 0;
--            j <= 0;
--        elsif rising_edge(sclk) then
--            state <= nextstate;
--            
--            case state is
--                when S0 =>
--                    i <= 0;
--                    j <= 0;
--                    
--                when S1 =>
--                    if i < 2 then --3
--                        i <= i + 1;
--                    else
--                        i <= 0;  -- Reset for next cycle
--                    end if;
--                    j <= 0;
--                    
--                when S2 =>
--                    if j < 9 then
--                        j <= j + 1;
--                    else
--                        j <= 0;  -- Reset for next cycle
--                    end if;
--                    i <= 0;
--                    
--                when others =>
--                    i <= 0;
--                    j <= 0;
--            end case;
--        end if;
--    end process;
--
--    -- Next state logic (combinational - includes button input)
--    process(state, i, j, btn)
--    begin
--        case state is
--            when S0 =>
--                -- Only transition when button is pressed
--                if btn = '1' then
--                    nextstate <= S1;
--                else
--                    nextstate <= S0;
--                end if;
--                
--            when S1 =>
--                -- Transition after 3 seconds
--                if i = 2 then
--                    nextstate <= S2;
--                else
--                    nextstate <= S1;
--                end if;
--                
--            when S2 =>
--                -- Transition after 10 seconds
--                if j = 9 then
--                    nextstate <= S0;
--                else
--                    nextstate <= S2;
--                end if;
--                
--            when others =>
--                nextstate <= S0;
--        end case;
--    end process;
--
--end behav;