
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder8bit is
Port(
	A:in std_logic_vector(7 downto 0);
	B:in std_logic_vector(7 downto 0);
	cin: in std_logic;
	S:out std_logic_vector(7 downto 0);
	cout: out std_logic);
end fulladder8bit;

architecture Behavioral of fulladder8bit is
component fulladder1bit is
Port( a : in STD_LOGIC;
			b : in STD_LOGIC;
			cin : in STD_LOGIC;
			s : out STD_LOGIC;
			cout : out STD_LOGIC);
end component;
signal csignal:std_logic_vector(6 downto 0);
begin
u0:fulladder1bit port map(A(0),B(0),cin,S(0),csignal(0));
u1:fulladder1bit port map(A(1),B(1),csignal(0),S(1),csignal(1));
u2:fulladder1bit port map(A(2),B(2),csignal(1),S(2),csignal(2));
u3:fulladder1bit port map(A(3),B(3),csignal(2),S(3),csignal(3));
u4:fulladder1bit port map(A(4),B(4),csignal(3),S(4),csignal(4));
u5:fulladder1bit port map(A(5),B(5),csignal(4),S(5),csignal(5));
u6:fulladder1bit port map(A(6),B(6),csignal(5),S(6),csignal(6));
u7:fulladder1bit port map(A(7),B(7),csignal(6),S(7),cout);

end Behavioral;

