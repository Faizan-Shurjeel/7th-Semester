library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binary_divider is 
port
(
    clk      : in  std_logic;
    reset    : in  std_logic;
    dividend : in  std_logic_vector(3 downto 0);
    divisor  : in  std_logic_vector(3 downto 0);
    start    : in  std_logic;
    quotient : out std_logic_vector(3 downto 0);
    remi     : out std_logic_vector(3 downto 0);
    done     : out std_logic;  -- Added done signal
    -- Debug outputs
    debug_state : out integer range 0 to 6;
    debug_counter : out integer range 0 to 4
);
end binary_divider;

architecture beh of binary_divider is
    type state_type is (IDLE, LOAD, CHECK, SUBTRACT, SHIFT, DONE_STATE);
    signal current_state, next_state : state_type;
    signal ender        : std_logic_vector(7 downto 0);
    signal quotient_reg : std_logic_vector(3 downto 0);  -- internal quotient
    signal sor          : std_logic_vector(7 downto 0);
    signal counter      : integer range 0 to 4;          -- Shift counter
begin

    -- State register process - ONLY updates state
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= IDLE;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;
    
    -- Debug output for state
    with current_state select debug_state <=
        0 when IDLE,
        1 when LOAD,
        2 when CHECK,
        3 when SUBTRACT,
        4 when SHIFT,
        5 when DONE_STATE,
        6 when others;
    
    -- Debug output for counter
    debug_counter <= counter;

    -- Combinational logic for next state
    process(current_state, start, counter)  -- Added counter to sensitivity list
    begin
        -- Default assignment
        next_state <= current_state;
        
        case current_state is
            when IDLE =>
                if start = '1' then
                    next_state <= LOAD;
                end if;
                
            when LOAD =>
                next_state <= CHECK;
                
            when CHECK =>
                next_state <= SUBTRACT;
                
            when SUBTRACT =>
                next_state <= SHIFT;
                
            when SHIFT =>
                if counter = 3 then  -- Done after 4 iterations (0,1,2,3)
                    next_state <= DONE_STATE;
                else
                    next_state <= CHECK;  -- Go back to CHECK for next iteration
                end if;
                
            when DONE_STATE =>
                next_state <= IDLE;
        end case;
    end process;

    -- Datapath process - ONLY place where ender, sor, quotient_reg, counter are assigned
    process(clk, reset)
    begin
        if reset = '1' then
            ender        <= (others => '0');
            sor          <= (others => '0');
            quotient_reg <= (others => '0');
            counter      <= 0;
            quotient     <= (others => '0');  -- Reset outputs
            remi        <= (others => '0');
            done         <= '0';
        elsif rising_edge(clk) then
            -- Default: done is low unless we're in DONE_STATE
            done <= '0';
            
            case current_state is
                when IDLE =>
                    quotient_reg <= (others => '0');
                    counter      <= 0;
                    done         <= '0';
                    
                when LOAD =>
                    ender   <= "0000" & dividend;
                    sor     <= divisor & "0000";
                    counter <= 0;  -- Reset counter on load
                    
                when CHECK =>
                    null;  -- Just a pipeline stage
                    
                when SUBTRACT =>
                    -- Compare and conditionally subtract
                    if unsigned(ender) >= unsigned(sor) then
                        -- Remainder >= Divisor: subtract and set quotient bit to 1
                        ender        <= std_logic_vector(unsigned(ender) - unsigned(sor));
                        quotient_reg <= '1' & quotient_reg(3 downto 1);  -- Shift right, insert 1 on left
                    else
                        -- Remainder < Divisor: don't subtract, set quotient bit to 0
                        quotient_reg <= '0' & quotient_reg(3 downto 1);  -- Shift right, insert 0 on left
                    end if;
                    
                when SHIFT =>
                    -- Shift divisor right by 1
                    sor     <= '0' & sor(7 downto 1);
                    counter <= counter + 1;
                    
                when DONE_STATE =>
                    -- Reverse the quotient bits (bit 3 becomes bit 0, etc.)
                    remi(3) <= quotient_reg(0);
                    remi(2) <= quotient_reg(1);
                    remi(1) <= quotient_reg(2);
                    remi(0) <= quotient_reg(3);
                    quotient     <= ender(3 downto 0); -- Remainder
                    done     <= '1';               -- Signal completion
            end case;
        end if;
    end process;
      
end beh;
