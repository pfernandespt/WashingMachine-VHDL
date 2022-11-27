--FSM que controla o ciclo de lavagem
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WashFSM is
	port(
		 reset   : in  std_logic;
		 clock   : in  std_logic;
		 program : in  std_logic_vector(3 downto 0); --programa escolhido
		 wash_on : in  std_logic;                    --enable ciclo lavagem
		 s_time  : out std_logic_vector(2 downto 0); --tempo de cada ciclo
		 s_exp   : in  std_logic;                    --sinal tempo expirado ciclo
		 w_valve : out std_logic;
		 w_pump  : out std_logic;
		 rinse   : out std_logic;
		 spin    : out std_logic
		 );
		 
end WashFSM;

architecture arq of WashFSM is
	constant PW : std_logic_vector(2 downto 0) := "010";
	constant E  : std_logic_vector(2 downto 0) := "111";
	constant RW : std_logic_vector(2 downto 0) := "100";
	constant SP : std_logic_vector(2 downto 0) := "110";
	constant FN : std_logic_vector(2 downto 0) := "010";
	
	type TState is (IDLE, PW1, E1, RW1, PW2, E2, RW2, SP1, RW3, FINISHED);
	signal pState, nState : TState;
begin
	sync_proc : process(clock)
	begin
		if(rising_edge(clock)) then
			if(reset = '1') then
				pState <= IDLE;
			elsif(wash_on = '1') then
				pState <= nState;
			end if;
		end if;
	end process;

	comb_proc : process(pState, program, wash_on, s_exp)
	begin
		
		w_valve <= '0';
		w_pump  <= '0';
		rinse   <= '0';
		spin    <= '0';
		s_time  <= "000";
		nState <= pState;
		
		if(wash_on = '1') then
			case pState is
				when IDLE =>
					if(wash_on = '1') then
						case program is  --inicio de funcionamento de acordo com o programa escolhido
							when "0001" =>
								nState <= PW1;
								
							when "0010" =>
								nState <= PW2;
								
							when "0011" =>
								nState <= SP1;
								
							when others =>
								nState <= IDLE;
								
						end case;
					end if;
					
				when PW1 =>
					if(s_exp = '1') then
						nState <= E1;
					end if;
					
					s_time <= PW;
					
					w_valve <= '1';
					
				when E1  =>
					if(s_exp = '1') then
						nState <= RW1;
					end if;
					
					s_time <= E;
					
					rinse <= '1';
					
				when RW1 =>
					if(s_exp = '1') then
						nState <= PW2;
					end if;
					
					s_time <= RW;
					
					w_pump <= '1';
					
				when PW2 =>
					if(s_exp = '1') then
						nState <= E2;
					end if;
					
					s_time <= PW;
					
					w_valve <= '1';
					
				when E2  =>
					if(s_exp = '1') then
						nState <= RW2;
					end if;
					
					s_time <= E;
					
					rinse <= '1';
					
				when RW2 =>
					if(s_exp = '1') then
						nState <= SP1;
					end if;
					
					s_time <= RW;
					
					w_pump <= '1';
					
				when SP1  =>
					if(s_exp = '1') then
						nState <= RW3;
					end if;
					
					s_time <= SP;
					
					spin <= '1';
				when RW3 =>
					if(s_exp = '1') then
						nState <= FINISHED;
					end if;
					
					s_time <= RW;
					
					w_pump <= '1';
				when FINISHED =>
					if(s_exp = '1') then
						nState <= IDLE;
					end if;
					
					s_time <= FN;
				when others =>
			end case;
		end if;
	end process;
end arq;
