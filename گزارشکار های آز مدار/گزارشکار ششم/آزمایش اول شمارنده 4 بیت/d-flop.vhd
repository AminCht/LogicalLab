library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity dflop is
Port (
  clk: in std_logic;
  D: in std_logic;
  set: in std_logic;
  reset: in std_logic;
  Q1: out std_logic;
  Q2: out std_logic);
end dflop;

architecture Behavioral of dflop is
component SRflipflop is
Port ( 
      clk : in  STD_LOGIC;
      S : in  STD_LOGIC;
      R : in  STD_LOGIC;
    set: in std_logic;
    reset: in std_logic;
      Q1 : out  STD_LOGIC;
      Q2 : out  STD_LOGIC);
end component;
signal s1 :std_logic;
signal s2:std_logic;
signal s3:std_logic;
signal s4:std_logic;
signal en:std_logic:='0';
signal clkn:std_logic;
signal dn:std_logic;
begin
  s3<= not(s4 and (D nand clk) and set);
  s4<=not (s3 and ((not D) nand clk) and reset);
  
  u0: SRflipflop port map(not clk,s3,s4,set,reset,Q1,Q2);
end Behavioral;