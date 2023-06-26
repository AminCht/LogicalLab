library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter is
Port(
	clk: in std_logic;
	set: in std_logic;
	reset: in std_logic;
	clr:in std_logic;
	Q: out std_logic_vector(3 downto 0));
end counter;

architecture Behavioral of counter is
component dflop is
Port (
	clk: in std_logic;
	D: in std_logic;
	set: in std_logic;
	reset: in std_logic;
	Q1: inout std_logic;
	Q2: inout std_logic);
end component;
signal q1:std_logic;
signal q2:std_logic;
signal q3:std_logic;
signal q4:std_logic;
signal QQ:std_logic_vector(3 downto 0);
signal res : std_logic;
--signal clr: std_logic;
begin
--clr<= QQ(1) nand QQ(3);
res<= (not clr) and reset;
u0:dflop port map(clk,q1,set,res,QQ(0),q1);
u1:dflop port map(QQ(0),q2,set,res,QQ(1),q2);
u2:dflop port map(QQ(1),q3,set,res,QQ(2),q3);
u3:dflop port map(QQ(2),q4,set,res,QQ(3),q4);
Q<=QQ;
end Behavioral;

