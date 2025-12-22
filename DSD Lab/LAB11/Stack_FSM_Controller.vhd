library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Stack_FSM_Controller is
    Port (
        Clk      : in  STD_LOGIC;
        Rst      : in  STD_LOGIC; 
        Push     : in  STD_LOGIC;
        Pop      : in  STD_LOGIC; 
        Data_In  : in  STD_LOGIC_VECTOR(7 downto 0); 
        Data_Out : out STD_LOGIC_VECTOR(7 downto 0); 
        Full     : out STD_LOGIC; 
        Empty    : out STD_LOGIC  
    );
end Stack_FSM_Controller;

architecture Behavioral of Stack_FSM_Controller is

    type RAM_ARRAY is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
    signal stack_mem : RAM_ARRAY := (others => (others => '0'));
    
    signal sp : integer range 0 to 16 := 0;
    
	 type state_type is (s_Idle, s_Push, s_Pop);
    signal current_state, next_state : state_type;

begin
    process(Clk, Rst)
    begin
        if Rst = '1' then
            current_state <= s_Idle;
        elsif rising_edge(Clk) then
            current_state <= next_state;
        end if;
    end process;

    process(current_state, Push, Pop, sp)
    begin
        next_state <= current_state;
        case current_state is
            when s_Idle =>
               
					if Push = '1' and sp < 16 then
                    next_state <= s_Push;
               
					elsif Pop = '1' and sp > 0 then
                    next_state <= s_Pop;
                else
                    next_state <= s_Idle;
                end if;
                
            when s_Push =>
                next_state <= s_Idle;
                
            when s_Pop =>
                next_state <= s_Idle;
                
            when others =>
                next_state <= s_Idle;
        end case;
    end process;

    process(CLK)
    begin
        if rising_edge(Clk) then
            if Rst = '1' then
                sp <= 0; 
                Data_Out <= (others => '0');
            else
                case current_state is
                    when s_Push =>
                        stack_mem(sp) <= Data_In; 
                        sp <= sp + 1;             
                        
                    when s_Pop =>
                        Data_Out <= stack_mem(sp - 1); 
                        sp <= sp - 1;                 
                        
                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process;

   
    Full  <= '1' when sp = 16 else '0';
    Empty <= '1' when sp = 0 else '0';

end Behavioral;
