library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Dec7Seg3 is
	port(
			din :  in std_logic_vector(3 downto 0);
			h0  : out std_logic_vector(6 downto 0);
			h1  : out std_logic_vector(6 downto 0)
			);
end Dec7Seg3;

architecture arq of Dec7Seg3 is
begin	                               
		h0 <= 
			   "1111001" when (din = "0001") else --1
			   "0100100" when (din = "0010") else --2
			   "0110000" when (din = "0011") else --3
				"1111111";						        --OFF
		
		h1 <= "0001100"; --P
				
			  
end arq;