
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter32 is
Port(
	clk: in std_logic;
	set: in std_logic;
	reset: in std_logic;
	clr:in std_logic;
	Q: out std_logic_vector(31 downto 0));
end counter32;

architecture Behavioral of counter32 is
component counter is 
Port(
	clk: in std_logic;
	set: in std_logic;
	reset: in std_logic;
	clr:in std_logic;
	Q: out std_logic_vector(3 downto 0));
end component;
signal QQ:std_logic_vector(31 downto 0);
begin
u0: counter port map(clk,set,reset,clr,QQ(3 downto 0));
u1: counter port map(QQ(3),set,reset,clr,QQ(7 downto 4));
u2: counter port map(QQ(7),set,reset,clr,QQ(11 downto 8));
u3: counter port map(QQ(11),set,reset,clr,QQ(15 downto 12));
u4: counter port map(QQ(15),set,reset,clr,QQ(19 downto 16));
u5: counter port map(QQ(19),set,reset,clr,QQ(23 downto 20));
u6: counter port map(QQ(23),set,reset,clr,QQ(27 downto 24));
u7: counter port map(QQ(27),set,reset,clr,QQ(31 downto 28));
Q<=QQ;
end Behavioral;

