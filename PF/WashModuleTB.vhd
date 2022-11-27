--TestBench relativa ao modulo de lavagem
library ieee;
use ieee.std_logic_1164.all;


entity WashModuleTB is
end WashModuleTB;


architecture stimulus of WashModuleTB is

	signal s_reset, s_clock, s_wash_on, s_w_valve, s_w_pump, s_rinse, s_spin :  std_logic;
	signal s_program : std_logic_vector (3 downto 0);
	signal s_sec_out : std_logic_vector(2 downto 0);
	
begin


	uut: entity work.WashModule(arq)
		generic map(
					periods_second => 3 --cada segundo esta definido por 3 periodos de clock, para demonstracao
					)
		port map (
		          reset      => s_reset,
				    clock      => s_clock,
				    wash_on    => s_wash_on,
				    program    => s_program,
				    w_valve    => s_w_valve,
				    w_pump     => s_w_pump,
				    rinse      => s_rinse,
				    spin       => s_spin,
				    sec_out    => s_sec_out
				    );
	clock_proc : process
	begin
		s_clock <= '1';
		wait for 10 ns;
		
		s_clock <= '0';
		wait for 10 ns;
		
	end process;
	
	
	stim_proc : process
	begin
		s_wash_on <= '1';
		s_reset   <= '0';
		s_program <= "0001";
		wait for 2500 ns;
		
		s_reset <= '1';
		s_program <= "0011";
		wait for 20 ns;
		
		s_reset <= '0';
		wait for 100 ns;
		
		s_wash_on <= '0';
		wait for 100 ns;
		
		s_wash_on <= '1';
		
		wait for  100000 ns;
	end process;


end stimulus;	
		
				  