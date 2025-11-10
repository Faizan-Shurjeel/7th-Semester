library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complexcounter is
    Port (
        clk   : in  std_logic;
        rst   : in  std_logic;
        m   : in  std_logic;  
		  cen : in std_logic;
        count : out std_logic_vector(2 downto 0)
    );
end complexcounter;

architecture FSM of complexcounter is

    -- Enumerate all 8 possible states
    type state_type is (
        S0, S1, S2, S3, S4, S5, S6, S7
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
    process(state, m)
    begin
        case state is
		  
				            -- Binary 0 gray 1
            when S0  =>
                if m = '0' then next_state <= S1; else next_state <= S1; end if;
				when S1  =>
                if m = '0' then next_state <= S2; else next_state <= S3; end if;
            when S2  =>
                if m = '0' then next_state <= S3; else next_state <= S6;  end if;
				when S3  =>
                if m = '0' then next_state <= S4; else next_state <= S2;  end if;
            when S4  =>
                if m = '0' then next_state <= S5; else next_state <= S0;  end if;
				when S5  =>
                if m = '0' then next_state <= S6; else next_state <= S4;  end if;
            when S6  =>
                if m = '0' then next_state <= S7; else next_state <= S7;  end if;
            when S7  =>
                if m = '0' then next_state <= S0; else next_state <= S5;  end if;
            
        end case;
    end process;

    ------------------------------------------------------------------------
    -- Output logic
    ------------------------------------------------------------------------
    with state select
        count <= "000" when S0,
                 "001" when S1,
                 "010" when S2,
                 "011" when S3,
                 "100" when S4,
                 "101" when S5,
                 "110" when S6,
                 "111" when S7;

end FSM;
