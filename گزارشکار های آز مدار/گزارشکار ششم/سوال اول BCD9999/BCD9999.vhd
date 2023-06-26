
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD9999 is
Port(
	clk: in std_logic;
	reset: in std_logic;
	Q: out std_logic_vector(15 downto 0));
end BCD9999;

architecture Behavioral of BCD9999 is
component BCD_2 is
Port(
	clk: in std_logic;
	reset:in std_logic;
	Q: out std_logic_vector(3 downto 0));
end component;
signal s: std_logic_vector(15 downto 0);
begin
Q<=s;
u0:BCD_2 port map(clk,reset,s(3 downto 0));
u1:BCD_2 port map(s(3),reset,s(7 downto 4));
u2:BCD_2 port map(s(7),reset,s(11 downto 8));
u3:BCD_2 port map(s(11),reset,s(15 downto 12));
end Behavioral;

