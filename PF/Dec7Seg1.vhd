library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Dec7Seg1 is
	port(
			din :  in std_logic_vector(2 downto 0);
			h0  : out std_logic_vector(6 downto 0);
			h1  : out std_logic_vector(6 downto 0)
			);
end Dec7Seg1;

architecture arq of Dec7Seg1 is
begin	
		
		h0 <= "0101111" when (din = "000") else --r
				"0001100" when (din = "001") else --P	
			   "0001100" when (din = "010") else --P
			   "0000111" when (din = "011") else --T
			   "1000111" when (din = "100") else --l
			   "0100011" when (din = "101") else --o
				"1111111";						       --OFF
		
		h1 <=  "0001100" when (din = "000") else --P	
			    "0000111" when (din = "001") else --T
			    "0010010" when (din = "010") else --S
			    "0010010" when (din = "011") else --S
			    "0100001" when (din = "100") else --d
			    "1000110" when (din = "101") else --c
				 "1111111";						        --OFF

			
end arq;
	