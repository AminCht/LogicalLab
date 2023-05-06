
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity comp8bit is
Port(
	 A: in std_logic_vector(7 downto 0);
	 B: in std_logic_vector(7 downto 0);
	 C: out std_logic_vector(7 downto 0)
	 );
end comp8bit;

architecture Behavioral of comp8bit is
component compratorexpandable is
	port(
	  A: in std_logic_vector(3 downto 0);
    B: in std_logic_vector(3 downto 0);
    Fi: in std_logic;
    Gi: in std_logic;
	 Hi: in std_logic;
	 Fo:out std_logic;
	 Go: out std_logic;
	 Ho:out std_logic);
    
end component;
component mux2to1 is
port (
        sel : in std_logic;
        min0 : in std_logic_vector(7 downto 0);
        min1 : in std_logic_vector(7 downto 0);
        mout : out std_logic_vector(7 downto 0)
    );
end component;

signal f: std_logic;
signal g:std_logic;
signal h:std_logic;
signal f1: std_logic;
signal g1:std_logic;
signal h1:std_logic;
signal f2: std_logic;
signal g2:std_logic;
signal h2:std_logic;
signal g3:std_logic;
signal h3:std_logic;
begin

u0:compratorexpandable port map(A(7 downto 4) ,B(7 downto 4),f,'1',h,f1,g1,h1);
u1:compratorexpandable port map(A(3 downto 0) ,B(3 downto 0),f1,g1,h1,f2,g2,h2);

u2:mux2to1 port map(h2,A,B,C);
end Behavioral;

