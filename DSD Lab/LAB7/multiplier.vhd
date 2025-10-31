library ieee;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

--N=5;
entity multiplier is port(
		clk,rst,sbtn : IN std_logic;
		numb : out std_logic_vector(6 downto 0);
		PROUT : OUT std_logic_vector(9 downto 0)
			
); end multiplier; 

architecture bhv of multiplier is 
	signal A: std_logic_vector(6 downto 0);     --A|AC
	signal B,Bcomp : std_logic_vector(5 downto 0);
	signal AC : std_logic_vector(1 downto 0);
	signal Prod : std_logic_vector(9 downto 0); -- temporary product register
	signal PH : std_logic_vector(5 downto 0);  -- to hold upper 6 bits of P register
	signal PL : std_logic_vector(3 downto 0);
	-----------------
	type boothstate is (START,IDLE,WORKi,ADDI,SUBT,DECR,DONE);
	signal state, next_state : boothstate;
	signal N: integer range 0 to 5;

begin

process(state)
begin
case state is
	when StART => numb <= "0000001";
	when IDLE  => numb <= "0000010";
	when WORKi => numb <= "0000100";
	when Addi  => numb <= "0001000";
	when SUBT  => numb <= "0010000";
	when DECR  => numb <= "0100000";
	when DONE  => numb <= "1000000";
end case;
end process;
----------
	process(clk,rst,sbtn)
	begin
		if (sbtn='1') then
			if rst ='0' then
				if rising_edge(clk) then
					state <=next_state;
				end if;
			else
				state<=IDLE;
			end if;
		else
			state <= START;
		end if;
	end process;

	process (clk) --- State transitions
	begin
		if rising_edge(clk) then
			case state is
				when START =>
					next_state<=IDLE;
				
				when IDLE => -- init
					A <="1101100";
					--AC <= A(1 downto 0);
					B <= "000010";
					Bcomp <= "111110";
					Prod <= "0000000000";
					N <=5;   -- define N as "signal N: integer range 0 to 5";
					next_state <= WORKi;
					
				
				when WORKi =>
					A <= A(6)& A(6 downto 1);
					AC <= A ( 1 downto 0);
					Prod <= Prod(9) & Prod(9 downto 1);
					PH <= Prod(9 downto 4);
					PL <= Prod( 3 downto 0);
					case AC is
						when "01" =>
							next_state <=ADDI;
						when "10" =>
							next_state <= SUBT;
						when others =>
							next_state <= DECR;
					end case;
				when ADDI =>
					Prod(9 downto 4) <= PH + B;
					next_state <= DECR;
				when SUBT =>
					Prod(9 downto 4) <= PH + Bcomp;
					next_state <= DECR;
				when DECR =>
					N <= N-1;
					if (N=0) then
						next_state <= DONE;
					else
						next_state <=WORKi;
					
					end if;
				when DONE =>
					PROUT <=Prod;
					next_state <= IDLE;
				when others =>
					next_state <=IDLE;
			end case;
		
		
		
		
		end if;
	
		
	
	end process;

end bhv;	