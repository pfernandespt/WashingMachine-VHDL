--Modulo que junta a logica de lavagem
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WashModule is 
	generic (
		      periods_second : integer := 50_000_000
				);
	port (
		   reset      : in std_logic;
		   clock      : in std_logic;
		   wash_on    : in std_logic;
		   program    : in std_logic_vector(3 downto 0);
		   w_valve    : out std_logic;
		   w_pump     : out std_logic;
		   rinse      : out std_logic;
		   spin       : out std_logic;
		   sec_out    : out std_logic_vector(2 downto 0)
		   );
		  
end WashModule;



architecture arq of WashModule is

	signal s_time   : std_logic_vector(2 downto 0);
	signal exp_time : std_logic;

begin
	FSM : entity work.WashFSM(arq)
			port map(
					 reset    => reset,
					 clock    => clock,
					 program  => program,
					 wash_on  => wash_on,
					 s_time   => s_time,
					 s_exp    => exp_time,
					 w_valve  => w_valve,
					 w_pump   => w_pump,
					 rinse    => rinse,
					 spin     => spin
					 );
	
	TIMER : entity work.loadTimer(arq)
			generic map(
						periods_second => periods_second,
						cap_log2 => 3
						)
			port map(
					 reset    => reset,
					 clk      => clock,
					 enable   => wash_on,
					 set_time => s_time,
					 exp_time => exp_time,
					 force_ld => '0',
					 sec_out  => sec_out
					 );
					 
 end arq;

	

