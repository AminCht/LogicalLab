
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fullsubtractor1bit is
	Port ( sm : in STD_LOGIC;
			 a: in STD_LOGIC;
			 b: in STD_LOGIC;
			 cin: in STD_LOGIC;
			 s: out STD_LOGIC;
			 cout: out STD_LOGIC);
end fullsubtractor1bit;

architecture Behavioral of fullsubtractor1bit is

component fulladder1bit is
	Port( a : in STD_LOGIC;
			b : in STD_LOGIC;
			cin : in STD_LOGIC;
			s : out STD_LOGIC;
			cout : out STD_LOGIC);
end component;
signal b1:STD_LOGIC;
begin
b1<= b xor sm;
u0:fulladder1bit port map(a,b1,cin,s,cout);
end Behavioral;

