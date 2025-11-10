library ieee;
use ieee.std_logic_1164.all;

entity Adder4 is
    port (
        A   : in  std_logic_vector(3 downto 0);
        B   : in  std_logic_vector(3 downto 0);
        Cin : in  std_logic; 
        Sum : out std_logic_vector(3 downto 0);
        Cout: out std_logic
    );
end Adder4;

architecture Structural of Adder4 is

    component FA
        port (
            a     : in  std_logic;
            b     : in  std_logic;
            c     : in  std_logic;
            sum   : out std_logic;
            carry : out std_logic
        );
    end component;

    signal C : std_logic_vector(3 downto 0);

begin

    FA0: FA port map(a => A(0), b => B(0), c => Cin,   sum => Sum(0), carry => C(0));
    FA1: FA port map(a => A(1), b => B(1), c => C(0),  sum => Sum(1), carry => C(1));
    FA2: FA port map(a => A(2), b => B(2), c => C(1),  sum => Sum(2), carry => C(2));
    FA3: FA port map(a => A(3), b => B(3), c => C(2),  sum => Sum(3), carry => C(3));

    Cout <= C(3);

end Structural;
