library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Dec7Seg2 is
	port(
			din :  in std_logic_vector(3 downto 0);
			h0  : out std_logic_vector(6 downto 0);
			h1  : out std_logic_vector(6 downto 0)
			);
end Dec7Seg2;

architecture arq of Dec7Seg2 is
begin	                               
		h0 <= "1000000" when (din = "0000") else --0
			   "1111001" when (din = "0001") else --1
			   "0100100" when (din = "0010") else --2
			   "0110000" when (din = "0011") else --3
			   "1000000" when (din = "0100") else --0
			   "1000000" when (din = "0110") else --0
			   "0000111" when (din = "1000") else --t
			   "0001100" when (din = "1001") else --P
			   "0010001" when (din = "1010") else --y
			   "0000111" when (din = "1011") else --t
				"1000010" when (din = "1100") else --G
				"1111111";						        --OFF
		
		h1 <= "1000000" when (din = "0000") else --0
			   "1000000" when (din = "0001") else --0
			   "1000000" when (din = "0010") else --0
			   "1000000" when (din = "0011") else --0
			   "0011001" when (din = "0100") else --4
			   "0000010" when (din = "0110") else --6
			   "0101111" when (din = "1000") else --r
			   "0100011" when (din = "1001") else --o
				"0001000" when (din = "1010") else --A
			   "0101011" When (din = "1011") else --n
				"0100011" when (din = "1100") else --O
				"1111111";						 --OFF
			  
end arq;
	