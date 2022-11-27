library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level is
	port(
		 CLOCK_50 : in  std_logic;
		 SW       : in  std_logic_vector(0 downto 0);
		 KEY      : in  std_logic_vector(2 downto 0);
		 LEDR     : out std_logic_vector(5 downto 0);
		 LEDG     : out std_logic_vector(7 downto 0);
		 HEX0     : out std_logic_vector(6 downto 0);
		 HEX1     : out std_logic_vector(6 downto 0);
		 HEX2     : out std_logic_vector(6 downto 0);
		 HEX3     : out std_logic_vector(6 downto 0);
		 HEX4     : out std_logic_vector(6 downto 0);
		 HEX5     : out std_logic_vector(6 downto 0);
		 HEX6     : out std_logic_vector(6 downto 0);
		 HEX7     : out std_logic_vector(6 downto 0)
		 );
end top_level;

architecture arq of top_level is
signal cleanKEY : std_logic_vector(2 downto 0);
signal reset, cycle, action, c_door, g_exp: std_logic;
signal disp_01 : std_logic_vector(3 downto 0);
signal disp_23 : std_logic_vector(2 downto 0);
signal disp_45 : std_logic_vector(5 downto 0);
signal s_wash_on : std_logic;
signal s_prog_s : std_logic_vector(3 downto 0);

begin
	Debouncer0 : entity work.DebounceUnit(Behavioral)
		generic map(
					kHzClkFreq     => 50_000,
					mSecMinInWidth => 100,
					inPolarity     => '0',
					outPolarity    => '1'
					)
		port map(
				 refClk => CLOCK_50,
			     dirtyIn => KEY(0),
		         pulsedOut => reset
				 );

	Debouncer1 : entity work.DebounceUnit(Behavioral)
		generic map(
					kHzClkFreq     => 50_000,
					mSecMinInWidth => 100,
					inPolarity     => '0',
					outPolarity    => '1'
					)
		port map(
				 refClk => CLOCK_50,
			     dirtyIn => KEY(1),
		         pulsedOut => action
				 );
	
	Debouncer2 : entity work.DebounceUnit(Behavioral)
		generic map(
					kHzClkFreq     => 50_000,
					mSecMinInWidth => 100,
					inPolarity     => '0',
					outPolarity    => '1'
					)
		port map(
				 refClk => CLOCK_50,
			     dirtyIn => KEY(2),
		         pulsedOut => cycle
				 );
	
	DFF : process(CLOCK_50)
			begin
				if(rising_edge(CLOCK_50)) then
					c_door <= SW(0);
				end if;
			end process;

	MenuModule : entity work.MenuModule(arq)
		generic map(
					periods_second => 50_000_000
					)
		port map(
				 reset    => reset,
				 clock    => CLOCK_50,
				 cycle    => cycle,
				 action   => action,
				 c_door   => c_door,
				 wash_on  => s_wash_on,
				 dlay_on  => LEDR(1),
				 g_exp    => g_exp,
				 prog_s   => s_prog_s,
				 temp_s   => LEDG(3 downto 0),
		         spin_s   => LEDG(7 downto 4),
				 disp_01  => disp_01,
				 disp_23  => disp_23,
				 disp_45  => disp_45
				 );
				 
	WashModule : entity work.WashModule(arq)
		generic map(
					periods_second => 50_000_000
					)
		port map(
				 reset      => reset or (s_wash_on and g_exp),
				 clock      => CLOCK_50,
				 wash_on    => s_wash_on,
				 program    => s_prog_s,
				 w_valve    => LEDR(2),
				 w_pump     => LEDR(4),
				 rinse      => LEDR(3),
				 spin       => LEDR(5)
				 );
	
	
	Dec1 : entity work.Bin7SegBCD(arq)
		port map(
				 bin => disp_45,
				 h0  => HEX4,
				 h1  => HEX5
		         );
				 
	Dec2 : entity work.Dec7Seg1(arq)
		port map(
				 din => disp_23,
				 h0  => HEX2,
				 h1  => HEX3
				 );
				 
	Dec3 : entity work.Dec7Seg2(arq)
		port map(
				 din => disp_01,
				 h0  => HEX0,
				 h1  => HEX1
				 );
	
	Dec4 : entity work.Dec7Seg3(arq)
		port map(
				 din => s_prog_s,
				 h0 => HEX6,
				 h1 => HEX7
				 );
				 
	LEDR(0) <= s_wash_on;
	
end arq;