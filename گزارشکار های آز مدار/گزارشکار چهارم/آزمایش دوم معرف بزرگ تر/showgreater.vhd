
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity showgreater is
	port( A: in std_logic_vector(3 downto 0);
			B: in std_logic_vector(3 downto 0);
			C: out std_logic_vector(3 downto 0)
			);
end showgreater;
architecture Behavioral of showgreater is
component comprator is
Port(A: in std_logic_vector(3 downto 0);
    B: in std_logic_vector(3 downto 0);
    F: out std_logic;
    G: out std_logic;
    H: out std_logic);
end component;
component mux2to1 is
port (
        sel : in std_logic;
        min0 : in std_logic_vector(3 downto 0);
        min1 : in std_logic_vector(3 downto 0);
        mout : out std_logic_vector(3 downto 0)
    );
end component;
signal f1: std_logic;
signal g1: std_logic;
signal h1: std_logic;
begin
u0:comprator port map(A,B,f1,g1,h1);
u1:mux2to1 port map(h1,A,B,C);
end Behavioral;

