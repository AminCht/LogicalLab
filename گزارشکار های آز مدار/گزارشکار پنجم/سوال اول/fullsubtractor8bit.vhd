----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullsubtractor8bit is
Port(
	A:in std_logic_vector(7 downto 0);
	B:in std_logic_vector(7 downto 0);
	Bin: in std_logic;
	D:out std_logic_vector(7 downto 0);
	Bout: out std_logic);
end fullsubtractor8bit;

architecture Behavioral of fullsubtractor8bit is
component fullsubtractor1bit is
Port(
	A : in STD_LOGIC;
			B : in STD_LOGIC;
			Bin : in STD_LOGIC;
			D : out STD_LOGIC;
			Bout : out STD_LOGIC);
end component;
signal dsignal:std_logic_vector(6 downto 0);
begin
u0:fullsubtractor1bit port map(A(0),B(0),Bin,D(0),dsignal(0));
u1:fullsubtractor1bit port map(A(1),B(1),dsignal(0),D(1),dsignal(1));
u2:fullsubtractor1bit port map(A(2),B(2),dsignal(1),D(2),dsignal(2));
u3:fullsubtractor1bit port map(A(3),B(3),dsignal(2),D(3),dsignal(3));
u4:fullsubtractor1bit port map(A(4),B(4),dsignal(3),D(4),dsignal(4));
u5:fullsubtractor1bit port map(A(5),B(5),dsignal(4),D(5),dsignal(5));
u6:fullsubtractor1bit port map(A(6),B(6),dsignal(5),D(6),dsignal(6));
u7:fullsubtractor1bit port map(A(7),B(7),dsignal(6),D(7),Bout);

end Behavioral;

