--Timer que carrega o valor de set_time quando está a 0, ou quando force_en esta a 1
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity loadTimer is
	generic(periods_second : integer := 3;
			  cap_log2       : integer := 6
			  );
	port(
			reset    : in  std_logic;
			clk      : in  std_logic;
			enable   : in  std_logic;
			force_ld : in  std_logic;
			set_time : in  std_logic_vector(cap_log2 - 1 downto 0);
			exp_time : out std_logic;
			sec_out  : out std_logic_vector(cap_log2 - 1 downto 0)
			);

end loadTimer;

architecture arq of loadTimer is
	signal seconds : integer := 0;
	signal periods : integer := 0;
	
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				seconds  <=  0;
				periods  <=  0;
				exp_time <= '0';
				
			elsif((seconds = 0) or (force_ld = '1')) then
					seconds <= to_integer(unsigned(set_time));
					periods <= 0;
					exp_time <= '0';
			
			elsif(enable = '1') then
				
				if((periods = periods_second - 2) and (seconds = 1)) then
					exp_time <= '1';
					periods <= periods + 1;
				
				elsif(periods = periods_second - 1) then
					seconds <= seconds - 1;
					periods <= 0;
					exp_time <= '0';
			
				else
					periods <= periods + 1;
					exp_time <= '0';
				
				end if;
			end if;
		end if;
	end process;
	
	sec_out <= std_logic_vector(to_unsigned(seconds, sec_out'length));
end arq;
					