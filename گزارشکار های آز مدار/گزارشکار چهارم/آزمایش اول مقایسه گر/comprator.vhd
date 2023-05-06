library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comprator is
Port( 
	 A: in std_logic_vector(3 downto 0);
    B: in std_logic_vector(3 downto 0);
    F: out std_logic;
    G: out std_logic;
    H: out std_logic);
end comprator;

architecture Behavioral of comprator is
signal s0_1 : std_logic;
signal s0_2 : std_logic;
signal s1_1 : std_logic;
signal s1_2 : std_logic;
signal s2_1 : std_logic;
signal s2_2 : std_logic;
signal s3_1 : std_logic;
signal s3_2 : std_logic;
signal ss0: std_logic;
signal ss1: std_logic;
signal ss2: std_logic;
signal ss3: std_logic;
begin
s0_1<= not A(0) and B(0);
s0_2 <= not B(0) and A(0);
s1_1<= not A(1) and B(1);
s1_2<= not B(1) and A(1);
s2_1<= not A(2) and B(2);
s2_2<= not B(2) and A(2);
s3_1<= not A(3) and B(3);
s3_2<= not B(3) and A(3);
ss0<=s0_1 nor s0_2;
ss1<=s1_1 nor s1_2;
ss2<=s2_1 nor s2_2;
ss3<=s3_1 nor s3_2;
F<=(s0_2 and ss1 and ss2 and ss3) or (s1_2 and ss2 and ss3) or (s2_2 and ss3) or s3_2;
G<= ss0 and ss1 and ss2 and ss3;
H<= (s0_1 and ss1 and ss2 and ss3) or (s1_1 and ss2 and ss3) or (s2_1 and ss3) or s3_1; 
end Behavioral;