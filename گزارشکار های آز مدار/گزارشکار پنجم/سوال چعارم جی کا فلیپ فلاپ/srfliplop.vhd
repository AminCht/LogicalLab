library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SRflipflop is
    Port ( clk : in  STD_LOGIC;
           S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q1 : inout  STD_LOGIC;
           Q2 : inout  STD_LOGIC);
end SRflipflop;

architecture Behavioral of SRflipflop is
signal s1 :std_logic;
signal s2:std_logic;
signal s3:std_logic;
signal s4:std_logic;
begin
	s1<=S nand clk;
	s2<=R nand clk;
	s4<=s2 nand s3;
	s3<=s1 nand s4;
	Q1<=s3;
	Q2<=s4;
end Behavioral;