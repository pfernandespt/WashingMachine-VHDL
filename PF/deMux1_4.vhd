library ieee;
use ieee.std_logic_1164.all;

entity deMux1_4 is
	port(
		 din  : in  std_logic;
		 sel  : in  std_logic_vector(1 downto 0);
		 dout : out std_logic_vector(3 downto 0)
		 );
end deMux1_4;

architecture arq of deMux1_4 is
begin
	process(din, sel)
	begin
		dout <= (others => '0');
		
		case sel is
			when "00" =>
				dout(0) <= din;
				
			when "01" =>
				dout(1) <= din;
			
			when "10" =>
				dout(2) <= din;
			
			when others =>
				dout(3) <= din;
			
		end case;
	end process;
end arq;