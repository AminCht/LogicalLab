
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux4to1_4bit is
   Port( clk: in std_logic;
			sel : in std_logic_vector(1 downto 0);
         min0: in STD_LOGIC_VECTOR(3 downto 0);
         min1: in STD_LOGIC_VECTOR(3 downto 0);
         min2: in STD_LOGIC_VECTOR(3 downto 0);
         min3: in STD_LOGIC_VECTOR(3 downto 0);
         mout: out STD_LOGIC_VECTOR(3 downto 0)
            );
end mux4to1_4bit;

architecture Behavioral of mux4to1_4bit is

component mux4to1_1bit is
port (
		  clk: in std_logic;
        sel : in std_logic_vector(1 downto 0);
        min0 : in std_logic;
        min1 : in std_logic;
        min2 : in std_logic;
        min3 : in std_logic;
        mout : out std_logic
    );
end component;

begin
u0:mux4to1_1bit port map(clk,sel,min0(0),min1(0),min2(0),min3(0),mout(0));
u1:mux4to1_1bit port map(clk,sel,min0(1),min1(1),min2(1),min3(1),mout(1));
u2:mux4to1_1bit port map(clk,sel,min0(2),min1(2),min2(2),min3(2),mout(2));
u3:mux4to1_1bit port map(clk,sel,min0(3),min1(3),min2(3),min3(3),mout(3));

end Behavioral;

