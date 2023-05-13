
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
port (
	sel: in std_logic_vector(2 downto 0);
	min0: in std_logic;
	min1: in std_logic;
	min2: in std_logic;
	min3: in std_logic;
	min4: in std_logic;
	min5: in std_logic;
	min6: in std_logic;
	min7: in std_logic;
	mout: out std_logic);
end mux;

architecture Behavioral of mux is
begin
process(sel,min0,min1,min2,min3,min4,min5,min6,min7)
begin
case sel is
when "000"=>mout<=min0;
when "001"=>mout<=min1;
when "010"=>mout<=min2;
when "011"=>mout<=min3;
when "100"=>mout<=min4;
when "101"=>mout<=min5;
when "110"=>mout<=min6;
when "111"=>mout<=min7;
when others =>mout<='0';
end case;
end process;
end Behavioral;

