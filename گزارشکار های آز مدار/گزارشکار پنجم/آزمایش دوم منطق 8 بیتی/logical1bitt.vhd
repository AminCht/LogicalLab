
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity logical1bit is
port(
A:in std_logic;
B: in std_logic;
sel: in std_logic_vector(2 downto 0);
C:out std_logic);

end logical1bit;

architecture Behavioral of logical1bit is
component mux
port (
	sel: in std_logic_vector(2 downto 0);
	min0: in std_logic;
	min1: in std_logic;
	min2: in std_logic;
	min3: in std_logic;
	min4: in std_logic;
	min5: in std_logic;
	min6: in std_logic;
	min7: in std_logic;
	mout: out std_logic);
end component;
signal m0: std_logic;
signal m1: std_logic;
signal m2: std_logic;
signal m3: std_logic;
signal m4: std_logic;
signal m5: std_logic;
signal m6: std_logic;
signal m7: std_logic;
begin
m0<=not B;
m1<=A nand B;
m2<=A xnor B;
m3<=not A;
m4<=A or B;
m5<=A and B;
m6<=A xor B;
m7<=A nor B;
u0:mux port map(sel,m0,m1,m2,m3,m4,m5,m6,m7,C);
end Behavioral;

