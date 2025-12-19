library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Lab_7_mul is
    port(
        mplier, mcand : in std_logic_vector(3 downto 0);
        clk, st       : in std_logic;
        nmcand        : out std_logic_vector(3 downto 0);
        product       : out std_logic_vector(8 downto 0);
        final         : out std_logic_vector(7 downto 0)
    );
end Lab_7_mul;

architecture behv of Lab_7_mul is

    type state_type is (s0, s1, s2, s3, s4, s5);
    signal state : state_type;
    signal ACC   : std_logic_vector(8 downto 0);
    alias Q1Q0   : std_logic_vector(1 downto 0) is ACC(1 downto 0);
    signal M2    : std_logic_vector(3 downto 0);
    signal done  : integer;

begin

    M2 <= std_logic_vector((not mcand) + 1);
    nmcand <= M2;

    state_logic : process(clk)
    begin
        if (clk'event and clk = '1') then
            case state is

                when s0 =>
                    ACC(8 downto 5) <= "0000";
                    ACC(4 downto 1) <= mplier;
                    ACC(0) <= '0';
                    final <= "00000000";
                    product <= ACC;
                    if st = '1' then
                        done <= 3;
                        state <= s1;
                    end if;

                when s1 =>
                    if Q1Q0 = "00" or Q1Q0 = "11" then
                        state <= s2;
                    elsif Q1Q0 = "10" then
                        state <= s3;
                    elsif Q1Q0 = "01" then
                        state <= s4;
                    end if;

                when s2 =>
                    ACC <= ACC(8) & ACC(8 downto 1);
                    product <= ACC;
                    done <= done - 1;
                    if done = 0 then
                        state <= s5;
                    else
                        state <= s1;
                    end if;

                when s3 =>
                    ACC(8 downto 5) <= ACC(8 downto 5) + M2;
                    product <= ACC;
                    state <= s2;

                when s4 =>
                    ACC(8 downto 5) <= ACC(8 downto 5) + mcand;
                    product <= ACC;
                    state <= s2;

                when s5 =>
                    product <= ACC;
                    if ACC(8) = '0' then
                        final <= ACC(8 downto 1);
                    else
                        final <= ((not ACC(8 downto 1)) + 1);
                    end if;

            end case;
        end if;
    end process;

end behv;
