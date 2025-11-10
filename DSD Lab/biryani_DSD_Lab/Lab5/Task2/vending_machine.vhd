library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vending_machine is
    Port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        rs1, rs2, rs4, rs8 : in  STD_LOGIC;
        fanta, cola, sprite : in  STD_LOGIC;
        enter       : in  STD_LOGIC;
        total_money : out STD_LOGIC_VECTOR(7 downto 0);
        change      : out STD_LOGIC_VECTOR(7 downto 0);
        dispense    : out STD_LOGIC_VECTOR(2 downto 0)
    );
end vending_machine;

architecture FSM of vending_machine is
    type state_type is (IDLE, WAIT_MONEY, WAIT_SELECTION, DISPENSER, RETURN_CHANGE);
    signal current_state, next_state : state_type;

    signal money_sum, next_money : integer range 0 to 255 := 0;
    signal drink_cost, next_cost : integer range 0 to 10 := 0;
    signal selected_drink, next_drink : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin

    -------------------------------------------------------------------
    -- Sequential process: state register
    -------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            current_state   <= IDLE;
            money_sum       <= 0;
            drink_cost      <= 0;
            selected_drink  <= "000";
        elsif rising_edge(clk) then
            current_state   <= next_state;
            money_sum       <= next_money;
            drink_cost      <= next_cost;
            selected_drink  <= next_drink;
        end if;
    end process;

    -------------------------------------------------------------------
    -- Combinational logic
    -------------------------------------------------------------------
    process(current_state, rs1, rs2, rs4, rs8, fanta, cola, sprite, enter,
            money_sum, drink_cost, selected_drink)
    begin
        next_state <= current_state;
        next_money <= money_sum;
        next_cost  <= drink_cost;
        next_drink <= selected_drink;
        change     <= (others => '0');
        dispense   <= "000";

        case current_state is
            when IDLE =>
                next_money <= 0;
                next_cost  <= 0;
                next_drink <= "000";
                if (rs1='1' or rs2='1' or rs4='1' or rs8='1') then
                    next_state <= WAIT_MONEY;
                end if;

            when WAIT_MONEY =>
                if rs1='1' then
                    next_money <= money_sum + 1;
                elsif rs2='1' then
                    next_money <= money_sum + 2;
                elsif rs4='1' then
                    next_money <= money_sum + 4;
                elsif rs8='1' then
                    next_money <= money_sum + 8;
                end if;

                if (fanta='1' or cola='1' or sprite='1') then
                    next_state <= WAIT_SELECTION;
                elsif enter='1' then
                    next_state <= RETURN_CHANGE;
                end if;

            when WAIT_SELECTION =>
                if fanta='1' then
                    next_cost  <= 3;
                    next_drink <= "001";
                elsif cola='1' then
                    next_cost  <= 4;
                    next_drink <= "010";
                elsif sprite='1' then
                    next_cost  <= 5;
                    next_drink <= "100";
                end if;

                if enter='1' then
                    if money_sum >= next_cost and next_cost /= 0 then
                        next_state <= DISPENSER;
                    else
                        next_state <= RETURN_CHANGE;
                    end if;
                end if;

            when DISPENSER =>
                dispense <= selected_drink;
                change   <= std_logic_vector(to_unsigned(money_sum - drink_cost, 8));
                next_money <= 0;
                next_cost  <= 0;
                next_drink <= "000";
                next_state <= IDLE;

            when RETURN_CHANGE =>
                change   <= std_logic_vector(to_unsigned(money_sum, 8));
                next_money <= 0;
                next_cost  <= 0;
                next_drink <= "000";
                next_state <= IDLE;

            when others =>
                next_state <= IDLE;
        end case;

        total_money <= std_logic_vector(to_unsigned(money_sum, 8));
    end process;
end FSM;
