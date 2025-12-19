--------------------------------------------------------------
-- SRAM Wrapper with FSM and Burst Mode
--------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab is
	 generic( width: integer:=4;
			depth: integer:=4;
			addr: integer:=2
	);
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           we : in STD_LOGIC;
           burst : in STD_LOGIC; 
           address : in STD_LOGIC_VECTOR (addr-1 downto 0);
           din : in STD_LOGIC_VECTOR (width-1 downto 0);
           dout : out STD_LOGIC_VECTOR (width-1 downto 0));
end lab;

architecture Behavioral of lab is

    component SRAM is
		port( 
        Clock: in std_logic;
        Enable: in std_logic;
        Read: in std_logic;
        Write: in std_logic;
        Read_Addr: in std_logic_vector(addr-1 downto 0);
        Write_Addr: in std_logic_vector(addr-1 downto 0);
        Data_in: in std_logic_vector(width-1 downto 0);
        Data_out: out std_logic_vector(width-1 downto 0)
    );
    end component;

    type state_type is (IDLE, WRITE_OP, READ_OP, BURST_1, BURST_2, BURST_3, BURST_4);
    signal current_state, next_state : state_type;

    signal sram_we : STD_LOGIC;
    signal sram_addr : STD_LOGIC_VECTOR(addr-1 downto 0);
    signal sram_din : STD_LOGIC_VECTOR(width-1  downto 0);
    signal sram_dout : STD_LOGIC_VECTOR(width-1 downto 0);
    
    signal burst_addr_reg : unsigned(addr-1 downto 0);

begin
	 
	 u_sram : SRAM 

    port map (
        Clock => clk,
        Enable => '1',       
        Read => not sram_we, 
        Write => sram_we,
        Read_Addr => sram_addr,
        Write_Addr => sram_addr,
        Data_in => sram_din,
        Data_out => sram_dout
    );

    -- output assignment
    dout <= sram_dout;
    sram_din <= din;

    -- State Register
    process(clk, rst)
    begin
        if rst = '1' then
            current_state <= IDLE;
            burst_addr_reg <= (others => '0');
        elsif rising_edge(clk) then
            current_state <= next_state;
            
            if current_state = IDLE and burst = '1' then
                burst_addr_reg <= unsigned(address);
            end if;
        end if;
    end process;

    -- Next State and Output Logic
    process(current_state, we, burst, address, burst_addr_reg)
    begin
        -- Defaults
        sram_we <= '0';
        sram_addr <= address;
        next_state <= current_state;

        case current_state is
            when IDLE =>
                if burst = '1' then
                    next_state <= BURST_1;
                elsif we = '1' then
                    next_state <= WRITE_OP;
                else
                    next_state <= READ_OP;
                end if;

            when WRITE_OP =>
                sram_we <= '1';
                sram_addr <= address;
                next_state <= IDLE;

            when READ_OP =>
                sram_we <= '0';
                sram_addr <= address;
                next_state <= IDLE;

            -- Burst Sequence
            when BURST_1 =>
                sram_we <= '0';
                sram_addr <= std_logic_vector(burst_addr_reg);
                next_state <= BURST_2;

            when BURST_2 =>
                sram_we <= '0';
                sram_addr <= std_logic_vector(burst_addr_reg + 1);
                next_state <= BURST_3;

            when BURST_3 =>
                sram_we <= '0';
                sram_addr <= std_logic_vector(burst_addr_reg + 2);
                next_state <= BURST_4;

            when BURST_4 =>
                sram_we <= '0';
                sram_addr <= std_logic_vector(burst_addr_reg + 3);
                next_state <= IDLE;

            when others =>
                next_state <= IDLE;
        end case;
    end process;

end Behavioral;