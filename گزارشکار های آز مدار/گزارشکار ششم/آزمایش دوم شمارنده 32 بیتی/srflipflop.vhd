library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SRflipflop is
    Port ( clk : in  STD_LOGIC;
           S : in  STD_LOGIC;
           R : in  STD_LOGIC;
			  set: in std_logic;
			  reset: in std_logic;
           Q1 : out  STD_LOGIC;
           Q2 : out  STD_LOGIC);
end SRflipflop;

architecture Behavioral of SRflipflop is
signal s1 :std_logic;
signal s2:std_logic;
signal s3:std_logic;
signal s4:std_logic;
begin
	s1<=S nand clk;
	s2<=R nand clk;
	s4<=not(s2 and s3 and reset);
	s3<=not (s1 and s4 and set);
	Q1<=s3;
	Q2<=s4;

end Behavioral;

