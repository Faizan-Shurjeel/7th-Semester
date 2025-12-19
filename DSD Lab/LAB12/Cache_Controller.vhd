library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Cache_Controller is
    Port (
        Clk         : in  STD_LOGIC;
        Reset       : in  STD_LOGIC;
        Start_Btn   : in  STD_LOGIC;
        Switch_Addr : in  STD_LOGIC_VECTOR(7 downto 0);
        Led_Hit     : out STD_LOGIC;
        Led_Miss    : out STD_LOGIC
    );
end Cache_Controller;

architecture Behavioral of Cache_Controller is

    -- 1. Define States [cite: 82]
    type state_type is (s_IDLE, s_READ, s_COMPARE, s_RESULT);
    signal current_state, next_state : state_type;

    -- 2. Define Memory (Tag RAM 8x5) [cite: 43, 83]
    type tag_array is array (0 to 7) of STD_LOGIC_VECTOR(4 downto 0);
    constant TAG_MEMORY : tag_array := (
        0 => "00001", -- Index 000: Tag 00001 (0x08) [cite: 68]
        1 => "11111", -- Index 001: Tag 11111 (0xF9) [cite: 69]
        7 => "10101", -- Index 111: Tag 10101 (0xAF) [cite: 70]
        others => "00000" -- All other lines are empty [cite: 71]
    );
    -- Internal Signals
    signal stored_tag : STD_LOGIC_VECTOR(4 downto 0);
    signal input_tag  : STD_LOGIC_VECTOR(4 downto 0);
    signal index      : integer range 0 to 7;
    signal match      : STD_LOGIC;

begin

    -- Extract Index and Tag from Switch_Addr [cite: 41, 42]
    -- Index: [2:0], Tag: [7:3]
    index     <= to_integer(unsigned(Switch_Addr(2 downto 0)));
    input_tag <= Switch_Addr(7 downto 3);

    -- 3. Process 1: Sequential State Transitions [cite: 84]
    process(Clk, Reset)
    begin
        if Reset = '1' then
            current_state <= s_IDLE;
        elsif rising_edge(Clk) then
            current_state <= next_state;
        end if;
    end process;

    -- 4. Process 2: Combinational Logic [cite: 85]
    process(current_state, Start_Btn, index, input_tag, stored_tag, match)
    begin
        -- Default values
        next_state <= current_state;
        Led_Hit    <= '0';
        Led_Miss   <= '0';

        case current_state is
            when s_IDLE =>
                if Start_Btn = '1' then
                    next_state <= s_READ;
                else
                    next_state <= s_IDLE;
                end if;

            when s_READ =>
                -- Retrieve Tag from array [cite: 87]
                -- In simulation/FPGA, this state provides the clock cycle for memory access
                next_state <= s_COMPARE;

            when s_COMPARE =>
                -- Perform comparison [cite: 87]
                next_state <= s_RESULT;

            when s_RESULT =>
                -- Latch result to LEDs [cite: 88]
                if (TAG_MEMORY(index) = input_tag) then
                    Led_Hit  <= '1';
                    Led_Miss <= '0';
                else
                    Led_Hit  <= '0';
                    Led_Miss <= '1';
                end if;
                
                -- Stay here until button is released [cite: 37]
                if Start_Btn = '1' then
                    next_state <= s_RESULT;
                else
                    next_state <= s_IDLE;
                end if;
        end case;
    end process;

end Behavioral;
