
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity bcdsegment4bit is
port (
	clk:in std_logic;
	reset:in std_logic;
	A1: out std_logic_vector(6 downto 0);
	A2: out std_logic_vector(6 downto 0);
	A3: out std_logic_vector(6 downto 0);
	A4: out std_logic_vector(6 downto 0));
end bcdsegment4bit;

architecture Behavioral of bcdsegment4bit is
component BCD9999 is
port(
clk: in std_logic;
	reset: in std_logic;
	Q: out std_logic_vector(15 downto 0));
end component;

component bcd_7segment is
Port(
	A: in std_logic_vector(3 downto 0);
	segment: out std_logic_vector(6 downto 0));
end component;
signal q: std_logic_vector(15 downto 0);
begin
u0:BCD9999 port map(clk,reset,q);
u1:bcd_7segment port map(q(3 downto 0),A1);
u2:bcd_7segment port map(q(7 downto 4),A2);
u3:bcd_7segment port map(q(11 downto 8),A3);
u4:bcd_7segment port map(q(15 downto 12),A4);
end Behavioral;

