
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fulladder1bit is
	Port( a : in STD_LOGIC;
			b : in STD_LOGIC;
			cin : in STD_LOGIC;
			s : out STD_LOGIC;
			cout : out STD_LOGIC);
end fulladder1bit;

architecture Behavioral of fulladder1bit is

begin
s<=a xor b xor cin;
cout<=(a and b) or ((a xor b) and cin) ;

end Behavioral;

