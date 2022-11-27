--Modulo que junta a logica de menu
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MenuModule is
	generic(
			periods_second : integer := 50_000_000
			);
	port(
		 reset    : in  std_logic;
		 clock    : in  std_logic;
		 cycle    : in  std_logic;
		 action   : in  std_logic;
		 c_door   : in  std_logic;
		 wash_on  : out std_logic;
		 dlay_on  : out std_logic;
		 g_exp    : out std_logic;
		 prog_s   : out std_logic_vector(3 downto 0);
		 temp_s   : out std_logic_vector(3 downto 0);
		 spin_s   : out std_logic_vector(3 downto 0);
		 disp_01  : out std_logic_vector(3 downto 0);
		 disp_23  : out std_logic_vector(2 downto 0);
		 disp_45  : out std_logic_vector(5 downto 0)
		 );
		 
end MenuModule;

architecture arq of MenuModule is
signal s_wash_on  : std_logic;
signal s_dlay_on  : std_logic;
signal s_force_ld : std_logic;
signal s_t_exp    : std_logic;
signal s_timer    : std_logic_vector(5 downto 0);
signal s_cycle    : std_logic_vector(3 downto 0);

signal s_sub_en   : std_logic_vector(1 downto 0);
signal s_prog_s   : std_logic_vector(3 downto 0);
signal s_temp_s   : std_logic_vector(3 downto 0);
signal s_spin_s   : std_logic_vector(3 downto 0);

signal timer_en   : std_logic;

begin
	Menu : entity work.MenuFSM(arq)
			port map(
					 reset   => reset,
					 clock   => clock,
					 action  => action,
					 c_door  => c_door,
					 delay_s => cycle,
					 t_exp   => s_t_exp,
					 prog_s  => s_prog_s,
					 temp_s  => s_temp_s,
					 spin_s  => s_spin_s,
					 sub_en  => s_sub_en,
					 disp_0  => disp_01,
					 disp_1  => disp_23,
					 timer   => s_timer,
					 wash_on => s_wash_on,
					 dlay_on => s_dlay_on,
					 force_t => s_force_ld
					 );
	
	timer_en <= s_wash_on or s_dlay_on;
	
	Timer : entity work.loadTimer(arq)
			generic map(
						periods_second => periods_second,
						cap_log2       => 6
						)
			port map(
					 reset    => reset,
					 clk      => clock,
					 enable   => timer_en,
					 force_ld => s_force_ld,
					 set_time => s_timer,
					 exp_time => s_t_exp,
				     sec_out  => disp_45
					);
	
	Prog : entity work.ProgFSM(arq)
			port map(
					 reset => reset,
					 clock => clock,
					 cycle => s_cycle(1),
					 dout  => s_prog_s
					 );
	
	Temp : entity work.TempFSM(arq)
			port map(
					 reset => reset,
					 clock => clock,
					 cycle => s_cycle(2),
					 dout  => s_temp_s
					 );
	Spin : entity work.SpinFSM(arq)
			port map(
					 reset => reset,
					 clock => clock,
					 cycle => s_cycle(3),
					 dout  => s_spin_s
					 );
	Demux : entity work.deMux1_4(arq)
			port map(
						din => cycle,
						sel => s_sub_en,
						dout => s_cycle
						);
						
	wash_on <= s_wash_on;
	dlay_on <= s_dlay_on;
	prog_s <= s_prog_s;
	temp_s <= s_temp_s;
	spin_s <= s_spin_s;
	g_exp  <= s_t_exp;
end arq;