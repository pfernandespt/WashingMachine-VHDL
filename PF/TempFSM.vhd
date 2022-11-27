--FSM de auxilio ao menu: Guarda a temperatura escolhida
library ieee;
use ieee.std_logic_1164.all;

entity TempFSM is
	port(
		 reset : in  std_logic;
		 clock : in  std_logic;
		 cycle : in  std_logic;
		 dout  : out std_logic_vector(3 downto 0)
		 );
		 
end TempFSM;

architecture arq of TempFSM is
	type TState is (COLD, T40, T60);
	signal pState, nState : TState;
begin
	sync_proc : process(clock)
	begin
		if(rising_edge(clock)) then
			if(reset = '1') then
				pState <= COLD;
			else
				pState <= nState;
			end if;
		end if;
	end process;

	comb_proc : process(pState, cycle)
	begin
		
		nState <= pState;
		
		case pState is
			when COLD =>
				if(cycle = '1') then
					nState <= T40;
				end if;
				
				dout <= "0000";
				
			when T40 =>
				if(cycle = '1') then
					nState <= T60;
				end if;
			
				dout <= "0100";
				
			when T60 =>
				if(cycle = '1') then
					nState <= COLD;
				end if;
				
				dout <= "0110";
				
			when others =>
				
				dout <= "0000";
				
		end case;
	end process;
end arq;
