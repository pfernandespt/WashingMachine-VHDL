--FSM de auxilio ao menu: Guarda o programa escolhido
library ieee;
use ieee.std_logic_1164.all;

entity ProgFSM is
	port(
		 reset : in  std_logic;
		 clock : in  std_logic;
		 cycle : in  std_logic;
		 dout  : out std_logic_vector(3 downto 0)
		 );
		 
end ProgFSM;

architecture arq of ProgFSM is
	type TState is (P1 , P2, P3);
	signal pState, nState : TState;
begin
	sync_proc : process(clock)
	begin
		if(rising_edge(clock)) then
			if(reset = '1') then
				pState <= P1;
			else
				pState <= nState;
			end if;
		end if;
	end process;

	comb_proc : process(pState, cycle)
	begin
		
		nState <= pState;
		
		case pState is
			when P1 =>
				if(cycle = '1') then
					nState <= P2;
				end if;
				
				dout <= "0001";
				
			when P2 =>
				if(cycle = '1') then
					nState <= P3;
				end if;
			
				dout <= "0010";
				
			when P3 =>
				if(cycle = '1') then
					nState <= P1;
				end if;
				
				dout <= "0011";
				
			when others =>
				
				dout <= "0000";
				
		end case;
	end process;
end arq;
