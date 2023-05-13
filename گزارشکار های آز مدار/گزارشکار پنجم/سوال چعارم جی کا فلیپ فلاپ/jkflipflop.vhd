
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity jkflipflop is
port(
	
	clk: in std_logic;
	J: in std_logic;
	K: in std_logic;
	Q1: inout std_logic;
	Q2: inout std_logic);
end jkflipflop;

architecture Behavioral of jkflipflop is
component SRflipflop is
Port ( clk : in  STD_LOGIC;
           S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q1 : inout  STD_LOGIC;
           Q2 : inout  STD_LOGIC);
end component;
signal s1:std_logic;
signal s2:std_logic;
signal s3:std_logic;
signal s4:std_logic;
begin
u0:SRflipflop port map(not clk,s3,s4,Q1,Q2);
s1<=not(j and clk and Q2);
s2<=not(k and clk and Q1);
s4<=s2 nand s3;
s3<=s1 nand s4;
end Behavioral;

