library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Bin7SegBCD is
	
	port(
			bin :  in std_logic_vector(5 downto 0);
			h0  : out std_logic_vector(6 downto 0);
			h1  : out std_logic_vector(6 downto 0)
			);
end Bin7SegBCD;

architecture arq of Bin7SegBCD is

	signal dec              : unsigned(7 downto 0);
	signal num2, num1, num0 : unsigned(7 downto 0);
	
begin
	
	dec <= "00" & unsigned(bin);
	
	num0 <= ( dec       rem 10);
	num1 <= ((dec / 10) rem 10);
	
		
		h0 <= "1111001" when (num0 = "0001") else --1
			   "0100100" when (num0 = "0010") else --2
			   "0110000" when (num0 = "0011") else --3
			   "0011001" when (num0 = "0100") else --4
			   "0010010" when (num0 = "0101") else --5
			   "0000010" when (num0 = "0110") else --6
			   "1111000" when (num0 = "0111") else --7
			   "0000000" when (num0 = "1000") else --8
			   "0010000" when (num0 = "1001") else --9
			   "1000000"; --0
		
		h1 <= "1111001" when (num1 = "0001") else --1
			   "0100100" when (num1 = "0010") else --2
			   "0110000" when (num1 = "0011") else --3
			   "0011001" when (num1 = "0100") else --4
			   "0010010" when (num1 = "0101") else --5
			   "0000010" when (num1 = "0110") else --6
			   "1111000" when (num1 = "0111") else --7
			   "0000000" when (num1 = "1000") else --8
			   "0010000" when (num1 = "1001") else --9
			   "1000000"; --0
end arq;
	