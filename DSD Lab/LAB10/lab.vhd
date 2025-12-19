library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab is
    generic (
        width      : integer := 4;
        addr_width : integer := 2
    );
    port (
        clk      : in  std_logic;
        reset    : in  std_logic;
        mem      : in  std_logic;
        rw       : in  std_logic;
        burst    : in  std_logic;
        address  : in  std_logic_vector(addr_width-1 downto 0);
        din      : in  std_logic_vector(width-1 downto 0);
        dout     : out std_logic_vector(width-1 downto 0)
    );
end lab;

architecture behavioral of lab is

    component SRAM is
        generic (
            width      : integer;
            depth      : integer;
            addr_width : integer
        );
        port (
            Clock      : in  std_logic;
            Enable     : in  std_logic;
            Read       : in  std_logic;
            Write      : in  std_logic;
            Read_Addr  : in  std_logic_vector(addr_width-1 downto 0);
            Write_Addr : in  std_logic_vector(addr_width-1 downto 0);
            Data_in    : in  std_logic_vector(width-1 downto 0);
            Data_out   : out std_logic_vector(width-1 downto 0)
        );
    end component;

    type state_type is (S_IDLE, S_WRITE, S_READ1, S_READ2, S_READ3, S_READ4);
    signal current_state, next_state : state_type;

    signal sram_oe          : std_logic;
    signal sram_we          : std_logic;
    signal sram_address     : std_logic_vector(addr_width-1 downto 0);
    
    -- This will be a REAL register now.
    signal burst_addr_reg   : unsigned(addr_width-1 downto 0);

begin

    u_sram : SRAM
    generic map (
        width      => width,
        depth      => 4, 
        addr_width => addr_width
    )
    port map (
        Clock      => clk,
        Enable     => '1',
        Read       => sram_oe,
        Write      => sram_we,
        Read_Addr  => sram_address, 
        Write_Addr => sram_address, 
        Data_in    => din,
        Data_out   => dout
    );
    
    process(clk, reset)
    begin
        if reset = '1' then
            current_state  <= S_IDLE;
            burst_addr_reg <= (others => '0');
        elsif rising_edge(clk) then
            current_state <= next_state;

            -- Capture initial address when starting burst read
            if current_state = S_IDLE and next_state = S_READ1 then
                burst_addr_reg <= unsigned(address);
            -- Increment address during burst reads
            elsif current_state = S_READ1 and next_state = S_READ2 then
                burst_addr_reg <= burst_addr_reg + 1;
            elsif current_state = S_READ2 and next_state = S_READ3 then
                burst_addr_reg <= burst_addr_reg + 1;
            elsif current_state = S_READ3 and next_state = S_READ4 then
                burst_addr_reg <= burst_addr_reg + 1;
            end if;
        end if;
    end process;

    process(current_state, mem, rw, burst, address, burst_addr_reg) 
    begin
        next_state   <= current_state;
        sram_oe      <= '0';
        sram_we      <= '0';
        sram_address <= address; 

        case current_state is
            when S_IDLE =>
                if mem = '1' then
                    if rw = '1' then
                        next_state <= S_READ1;
                    else
                        next_state <= S_WRITE;
                    end if;
                end if;

            when S_WRITE =>
                sram_we <= '1';
                next_state <= S_IDLE;

            when S_READ1 =>
                sram_oe <= '1';
                sram_address <= std_logic_vector(burst_addr_reg);
                if burst = '1' then
                    next_state <= S_READ2;
                else
                    next_state <= S_IDLE;
                end if;

            when S_READ2 =>
                sram_oe <= '1';
                sram_address <= std_logic_vector(burst_addr_reg);
                next_state <= S_READ3;

            when S_READ3 =>
                sram_oe <= '1';
                sram_address <= std_logic_vector(burst_addr_reg);
                next_state <= S_READ4;

            when S_READ4 =>
                sram_oe <= '1';
                sram_address <= std_logic_vector(burst_addr_reg);
                next_state <= S_IDLE;

            when others =>
                next_state <= S_IDLE;

        end case;
    end process;

end behavioral;