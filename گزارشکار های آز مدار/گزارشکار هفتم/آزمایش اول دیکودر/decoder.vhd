
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decoder is
port (
	A: in std_logic_vector(1 downto 0);
	B: out std_logic_vector (3 downto 0));
end decoder;

architecture Behavioral of decoder is

begin
with A select B <=
 "1000" when "00",
 "0100" when "01",
 "0010" when "10",
 "0001" when "11",
 "0000" when others;

end Behavioral;

