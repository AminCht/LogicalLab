
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity logical8bit is
port(
	A:in std_logic_vector(7 downto 0);
	B:in std_logic_vector(7 downto 0);
	sel: in std_logic_vector(2 downto 0);
	C:out std_logic_vector(7 downto 0)
);
end logical8bit;

architecture Behavioral of logical8bit is
component logical1bit
port(
A:in std_logic;
B: in std_logic;
sel: in std_logic_vector(2 downto 0);
C:out std_logic);
end component;
begin
u0:logical1bit port map(A(0),B(0),sel,C(0));
u1:logical1bit port map(A(1),B(1),sel,C(1));
u2:logical1bit port map(A(2),B(2),sel,C(2));
u3:logical1bit port map(A(3),B(3),sel,C(3));
u4:logical1bit port map(A(4),B(4),sel,C(4));
u5:logical1bit port map(A(5),B(5),sel,C(5));
u6:logical1bit port map(A(6),B(6),sel,C(6));
u7:logical1bit port map(A(7),B(7),sel,C(7));


end Behavioral;

