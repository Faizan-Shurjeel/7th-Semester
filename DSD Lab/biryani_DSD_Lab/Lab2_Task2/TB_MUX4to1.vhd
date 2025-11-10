library ieee;
use ieee.std_logic_1164.all;

entity TB_MUX4to1 is
end TB_MUX4to1;

architecture sim of TB_MUX4to1 is
    component MUX4to1
        port (
            D0, D1, D2, D3 : in  std_logic;
            SEL            : in  std_logic_vector(1 downto 0);
            Y              : out std_logic
        );
    end component;

    signal D0, D1, D2, D3 : std_logic := '0';
    signal SEL            : std_logic_vector(1 downto 0) := "00";
    signal Y              : std_logic;
begin
    UUT: MUX4to1 port map(D0, D1, D2, D3, SEL, Y);

        D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '1';


        SEL <= "00"; --  Y = D0 = 0
        SEL <= "01"; --  Y = D1 = 1
        SEL <= "10"; --  Y = D2 = 0
        SEL <= "11"; --  Y = D3 = 1

end sim;
