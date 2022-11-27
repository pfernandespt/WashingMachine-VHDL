--maquina de estados que controla o funcionamento do menu
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MenuFSM is
	port(
		 reset   : in  std_logic;
		 clock   : in  std_logic;
		 action  : in  std_logic;
		 delay_s : in  std_logic;
		 t_exp   : in  std_logic;
		 c_door  : in  std_logic;
		 prog_s  : in  std_logic_vector(3 downto 0);
		 temp_s  : in  std_logic_vector(3 downto 0);
		 spin_s  : in  std_logic_vector(3 downto 0);
		 sub_en  : out std_logic_vector(1 downto 0); --para controlar os sub menus (FSM)
		 disp_1  : out std_logic_vector(2 downto 0); --para controlar o decoder dos displays1
		 disp_0  : out std_logic_vector(3 downto 0); --para controlar o decoder dos displays0
		 timer   : out std_logic_vector(5 downto 0); --saida para o timer
		 wash_on : out std_logic;					 --indicador de lavagem ativa
		 dlay_on : out std_logic;					 --indicador de inicializacao diferida
		 force_t : out std_logic					 --force load do timer
		 );
		 
end MenuFSM;

architecture arq of MenuFSM is
	type TState is (PROG, TEMP, SPIN, MODE, DELAY, WASH, PAUSE);
	signal pState, nState : TState;
	constant dl : std_logic_vector(5 downto 0) := std_logic_vector(to_unsigned(60,timer'length));
	constant p1 : std_logic_vector(5 downto 0) := std_logic_vector(to_unsigned(38,timer'length));
	constant p2 : std_logic_vector(5 downto 0) := std_logic_vector(to_unsigned(25,timer'length));
	constant p3 : std_logic_vector(5 downto 0) := std_logic_vector(to_unsigned(12,timer'length));
begin
	sync_proc : process(clock)
	begin
		if(rising_edge(clock)) then
			if(((pState /= nState) and (pState = MODE)) or pState = PROG) then
				force_t <= '1';
			else 
				force_t <= '0';
			end if;
				
			if(reset = '1') then
				pState <= PROG;
			else
				pState <= nState;
			end if;
		end if;
	end process;

	comb_proc : process(action, c_door, delay_s, t_exp, pState, nState, prog_s, temp_s, spin_s)
	begin
		
		nState  <= pState;
		sub_en  <= (others => '0');
		disp_1  <= (others => '1');
		disp_0  <= (others => '1');
		case prog_s is
					when "0001" =>
						timer <= p1;
					when "0010" =>
						timer <= p2;
					when others =>
						timer <= p3;
					end case;
		wash_on <= '0';
		dlay_on <= '0';
		
		case pState is
			when PROG =>
				if(action = '1') then
					nState <= TEMP;
				end if;
				sub_en <= "01";
				disp_1 <= "000";  --Pr
				disp_0 <= "1100"; --og
				
			
			when TEMP =>
				if(action = '1') then
					nState <= SPIN;
				end if;
				
				sub_en <= "10";
				disp_1 <= "001"; --tP
				disp_0 <= temp_s;
			
			when SPIN =>
				if(action = '1') then
					nState <= MODE;
				end if;
				
				sub_en <= "11";
				disp_1 <= "010"; --SP
				disp_0 <= spin_s;
			
			when MODE =>
				if(action = '1' and c_door = '1') then
					nState <= WASH;
				elsif (delay_s = '1')  then
					nState <= DELAY;
				end if;
				
				disp_1 <= "011";  --St
				disp_0 <= "1000"; --rt
				
			when DELAY =>
				if(t_exp = '1') then
					if(c_door = '1') then
						nState <= WASH;
					else 
						nState <= PAUSE;
					end if;
				end if;
				
				timer <= dl;
				
				disp_1  <= "100";  --dL
				disp_0  <= "1010"; --Ay
				dlay_on <= '1';
			
			when WASH =>
				if(action = '1' or c_door = '0') then
					nState <= PAUSE;
				elsif (t_exp = '1') then
					nState <= PROG;
				end if;
					
				disp_1 <= "011"; --St
				disp_0 <= "1001"; --oP
				wash_on <= '1';
			
			when PAUSE =>
				if(action = '1' and c_door = '1') then
					nState <= WASH;
				end if;
				
				disp_1 <= "101"; -- Co
				disp_0 <= "1011"; --rt
				wash_on <= '0';
			
			when others =>
				nState <= PROG;
				
		end case;
	end process;
end arq;
