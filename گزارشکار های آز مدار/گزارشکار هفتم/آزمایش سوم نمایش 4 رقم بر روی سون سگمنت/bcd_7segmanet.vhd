
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_7segment is
Port(
	A: in std_logic_vector(3 downto 0);
	segment: out std_logic_vector(6 downto 0));
end bcd_7segment;

architecture Behavioral of bcd_7segment is

begin
with A select segment <=
"1111110" when "0000",
"0110000" when "0001",
"1101101" when "0010",
"1111001" when "0011",
"0110011" when "0100",
"1011011" when "0101",
"1011111" when "0110",
"1110000" when "0111",
"1111111" when "1000",
"1111011" when "1001",
"0000000" when others;
				 --"0000001" WHEN "0000" , -- "0"     
		 --			 "1001111" WHEN "0001" , -- "1" 
			--	  	 "0010010" WHEN "0010" , -- "2" 
				--	 "0000110" WHEN "0011" , -- "3" 
			--		 "1001100" WHEN "0100" , -- "4" 
				--	 "0100100" WHEN "0101" , -- "5" 
					-- "0100000" WHEN "0110" , -- "6" 
					 --"0001111" WHEN "0111" , -- "7" 
					 --"0000000" WHEN "1000" , -- "8"     
					 --"0000100" WHEN "1001" , -- "9" 
					 --"1111111" WHEN OTHERS;
end Behavioral;
