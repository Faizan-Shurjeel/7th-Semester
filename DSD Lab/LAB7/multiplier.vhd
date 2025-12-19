library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier is
    generic(
        N : integer := 5
    );
    port(
        clk   : in  std_logic;
        rst   : in  std_logic;
        start : in  std_logic;
        M     : in  signed(N-1 downto 0);  -- Multiplicand
        Q_in  : in  signed(N-1 downto 0);  -- Multiplier
        P     : out signed(2*N-1 downto 0); -- Final product
        done  : out std_logic
    );
end multiplier;

architecture Behavioral of multiplier is
  
    signal A     : signed(N-1 downto 0) := (others => '0');  
    signal Q     : signed(N-1 downto 0) := (others => '0');  
    signal Qm1   : std_logic := '0';                         
    signal SC    : integer range 0 to N := 0;                
    signal M_reg : signed(N-1 downto 0) := (others => '0');  
    
    type state_type is (IDLE, INIT, CHECK_BITS, ADD_SUB, SHIFT_REG, FINISH);
    signal state : state_type := IDLE;
    
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                A     <= (others => '0');
                Q     <= (others => '0');
                Qm1   <= '0';
                SC    <= 0;
                M_reg <= (others => '0');
                done  <= '0';
                state <= IDLE;
                
            else
                case state is
                    when IDLE =>
                        done <= '0';
                        if start = '1' then
                            state <= INIT;
                        end if;
                    
                    when INIT =>
                        -- Initialize: A=0, Q=Multiplier, Qm1=0, SC=N
                        A     <= (others => '0');
                        Q     <= Q_in;
                        Qm1   <= '0';
                        M_reg <= M;
                        SC    <= N;
                        state <= CHECK_BITS;
                    
                    when CHECK_BITS =>
                        
                        state <= ADD_SUB;
                    
                    when ADD_SUB =>
                        
                        if Q(0) = '0' and Qm1 = '1' then
                            
                            A <= A + M_reg;
                        elsif Q(0) = '1' and Qm1 = '0' then
                            
                            A <= A - M_reg;
                        end if;
                        
                        state <= SHIFT_REG;
                    
                    when SHIFT_REG =>

                        Qm1 <= Q(0);                      
                        Q   <= A(0) & Q(N-1 downto 1);    
                        A   <= A(N-1) & A(N-1 downto 1);  
                        
                        
                        SC <= SC - 1;
                        
                        
                        if SC = 1 then
                            state <= FINISH;
                        else
                            state <= CHECK_BITS;
                        end if;
                    
                    when FINISH =>
                        done  <= '1';
                        state <= IDLE;
                        
                end case;
            end if;
        end if;
    end process;
    
   
    P <= A & Q;
    
end Behavioral;
