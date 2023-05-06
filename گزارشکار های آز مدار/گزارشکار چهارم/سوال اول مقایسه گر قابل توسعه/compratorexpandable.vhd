library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity compratorexpandable is
Port( 
     A: in std_logic_vector(3 downto 0);
    B: in std_logic_vector(3 downto 0);
	 Fi: in std_logic;
    Gi: in std_logic;
	 Hi: in std_logic;
	 Fo:out std_logic;
	 Go: out std_logic;
	 Ho:out std_logic
	 );
	
end compratorexpandable;

architecture Behavioral of compratorexpandable is
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
process (Gi,s0_1,s0_2,s1_1,s1_2,s2_1,s2_2,s3_1,s3_2,ss0,ss1,ss2,ss3,Fi,Gi,Hi)
begin
case Gi is 
when '1' =>Fo<=(s0_2 and ss1 and ss2 and ss3) or (s1_2 and ss2 and ss3) or (s2_2 and ss3) or s3_2;
Ho<= (s0_1 and ss1 and ss2 and ss3) or (s1_1 and ss2 and ss3) or (s2_1 and ss3) or s3_1; 
Go<= ss0 and ss1 and ss2 and ss3;
when others =>Fo<=Fi;
Ho<=Hi;
Go<=Gi;
end case;
end process;


end Behavioral;