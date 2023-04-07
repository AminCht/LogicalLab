library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullsubtractor4bit is
	Port ( sm : in STD_LOGIC;
			 a : in STD_LOGIC_VECTOR (3 downto 0);
			 b : in STD_LOGIC_VECTOR (3 downto 0);
			 cin : in STD_LOGIC;
			 s : out STD_LOGIC_VECTOR (3 downto 0);
			 cout : out STD_LOGIC);
end fullsubtractor4bit;

architecture Behavioral of fullsubtractor4bit is
component fullsubtractor1bit is 
	Port ( sm : in STD_LOGIC;
			 a: in STD_LOGIC;
			 b: in STD_LOGIC;
			 cin: in STD_LOGIC;
			 s: out STD_LOGIC;
			 cout: out STD_LOGIC);
end component;
signal csignal:STD_LOGIC_VECTOR (2 downto 0);
begin
u0:fullsubtractor1bit port map(sm,a(0),b(0),sm,s(0),csignal(0));
u1:fullsubtractor1bit port map(sm,a(1),b(1),csignal(0),s(1),csignal(1));
u2:fullsubtractor1bit port map(sm,a(2),b(2),csignal(1),s(2),csignal(2));
u3:fullsubtractor1bit port map(sm,a(3),b(3),csignal(2),s(3),cout);
end Behavioral;

