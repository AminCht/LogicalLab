
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_2 is
Port(
	clk: in std_logic;
	reset:in std_logic;
	Q: out std_logic_vector(3 downto 0));
end BCD_2;

architecture Behavioral of BCD_2 is
component counter is
Port(
	clk: in std_logic;
	set: in std_logic;
	reset: in std_logic;
	clr:in std_logic;
	Q: out std_logic_vector(3 downto 0));
end component;	
component counter32 is
Port(
	clk: in std_logic;
	set: in std_logic;
	reset: in std_logic;
	clr: in std_logic;
	Q: out std_logic_vector(31 downto 0));
end component;
signal QQ: std_logic_vector(31 downto 0);
signal Q1: std_logic_vector(3 downto 0);
signal clr:std_logic;
begin
clr<=Q1(1) and Q1(3);
u0:counter32 port map(clk,'1',reset,'0',QQ);
u1:counter port map(clk,'1',reset,clr,Q1);
Q<=Q1;
end Behavioral;

