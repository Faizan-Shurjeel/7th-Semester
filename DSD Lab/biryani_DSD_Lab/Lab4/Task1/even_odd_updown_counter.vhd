library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity even_odd_updown_counter is
    Port (
        clk   : in  std_logic;
        rst   : in  std_logic;
        cen   : in  std_logic;
        dir   : in  std_logic;  -- 1 = up, 0 = down
        count : out std_logic_vector(3 downto 0)
    );
end even_odd_updown_counter;

architecture FSM of even_odd_updown_counter is

    -- Enumerate all 16 possible states
    type state_type is (
        S0, S1, S2, S3, S4, S5, S6, S7,
        S8, S9, S10, S11, S12, S13, S14, S15
    );
    signal state, next_state : state_type;

begin

    ------------------------------------------------------------------------
    -- State register
    ------------------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            state <= S0;   -- start at 0 (even)
        elsif rising_edge(clk) then
            if cen = '1' then
                state <= next_state;
            end if;
        end if;
    end process;

    ------------------------------------------------------------------------
    -- Next-state logic (FSM transitions)
    ------------------------------------------------------------------------
    process(state, dir)
    begin
        case state is

            -- EVEN STATES (upwards go to next even, downwards go to prev even)
            when S0  =>
                if dir = '1' then next_state <= S2; else next_state <= S15; end if;
            when S2  =>
                if dir = '1' then next_state <= S4; else next_state <= S0;  end if;
            when S4  =>
                if dir = '1' then next_state <= S6; else next_state <= S2;  end if;
            when S6  =>
                if dir = '1' then next_state <= S8; else next_state <= S4;  end if;
            when S8  =>
                if dir = '1' then next_state <= S10; else next_state <= S6; end if;
            when S10 =>
                if dir = '1' then next_state <= S12; else next_state <= S8; end if;
            when S12 =>
                if dir = '1' then next_state <= S14; else next_state <= S10; end if;
            when S14 =>
                if dir = '1' then next_state <= S1;  else next_state <= S12; end if; -- switch to odd cycle

            -- ODD STATES
            when S1  =>
                if dir = '1' then next_state <= S3; else next_state <= S14; end if;
            when S3  =>
                if dir = '1' then next_state <= S5; else next_state <= S1;  end if;
            when S5  =>
                if dir = '1' then next_state <= S7; else next_state <= S3;  end if;
            when S7  =>
                if dir = '1' then next_state <= S9; else next_state <= S5;  end if;
            when S9  =>
                if dir = '1' then next_state <= S11; else next_state <= S7;  end if;
            when S11 =>
                if dir = '1' then next_state <= S13; else next_state <= S9;  end if;
            when S13 =>
                if dir = '1' then next_state <= S15; else next_state <= S11; end if;
            when S15 =>
                if dir = '1' then next_state <= S0;  else next_state <= S13; end if; -- back to even cycle

        end case;
    end process;

    ------------------------------------------------------------------------
    -- Output logic
    ------------------------------------------------------------------------
    with state select
        count <= "0000" when S0,
                 "0001" when S1,
                 "0010" when S2,
                 "0011" when S3,
                 "0100" when S4,
                 "0101" when S5,
                 "0110" when S6,
                 "0111" when S7,
                 "1000" when S8,
                 "1001" when S9,
                 "1010" when S10,
                 "1011" when S11,
                 "1100" when S12,
                 "1101" when S13,
                 "1110" when S14,
                 "1111" when S15;

end FSM;
