library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity two_consecutive_ones is
    Port (
        clk    : in  std_logic;
        Resetn : in  std_logic; -- active-low reset
        W      : in  std_logic;
        Z      : out std_logic
    );
end two_consecutive_ones;

architecture FSM of two_consecutive_ones is

    -- Define states
    type state_type is (S0, S1, S2);
    signal state, next_state : state_type;

begin

    ----------------------------------------------------------------
    -- State Register (sequential process)
    ----------------------------------------------------------------
    process(clk, Resetn)
    begin
        if Resetn = '0' then
            state <= S0;              -- async reset to S0
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    ----------------------------------------------------------------
    -- Next State Logic (combinational process)
    ----------------------------------------------------------------
    process(state, W)
    begin
        case state is
            when S0 =>
                if W = '1' then
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;

            when S1 =>
                if W = '1' then
                    next_state <= S2;
                else
                    next_state <= S0;
                end if;

            when S2 =>
                if W = '1' then
                    next_state <= S2; -- stay in detection
                else
                    next_state <= S0; -- reset sequence
                end if;
        end case;
    end process;

    ----------------------------------------------------------------
    -- Output 
    ----------------------------------------------------------------
    process(state)
    begin
        case state is
            when S0 => Z <= '0';
            when S1 => Z <= '0';
            when S2 => Z <= '1';
        end case;
    end process;

end FSM;
