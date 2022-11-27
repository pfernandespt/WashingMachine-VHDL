--FSM de auxilio ao menu: Guarda o spin escolhido
library ieee;
use ieee.std_logic_1164.all;

entity SpinFSM is
	port(
		 reset : in  std_logic;
		 clock : in  std_logic;
		 cycle : in  std_logic;
		 dout  : out std_logic_vector(3 downto 0)
		 );
		 
end SpinFSM;

architecture arq of SpinFSM is
	type TState is (S1, S2);
	signal pState, nState : TState;
begin
	sync_proc : process(clock)
	begin
		if(rising_edge(clock)) then
			if(reset = '1') then
				pState <= S1;
			else
				pState <= nState;
			end if;
		end if;
	end process;

	comb_proc : process(pState, cycle)
	begin
		
		nState <= pState;
		
		case pState is
			when S1 =>
				if(cycle = '1') then
					nState <= S2;
				end if;
				
				dout <= "0001";
				
			when S2 =>
				if(cycle = '1') then
					nState <= S1;
				end if;
			
				dout <= "0010";
				
			when others =>
				
				dout <= "0000";
				
		end case;
	end process;
end arq;
