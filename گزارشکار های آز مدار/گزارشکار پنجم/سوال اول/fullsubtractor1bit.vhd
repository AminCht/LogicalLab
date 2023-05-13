
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullsubtractor1bit is
Port( A : in STD_LOGIC;
			B : in STD_LOGIC;
			Bin : in STD_LOGIC;
			D : out STD_LOGIC;
			Bout : out STD_LOGIC);
end fullsubtractor1bit;

architecture Behavioral of fullsubtractor1bit is

begin
D<=A xor(B xor Bin);
Bout<= (not(B xor Bin) and A) or ((not B) and Bin);

end Behavioral;

