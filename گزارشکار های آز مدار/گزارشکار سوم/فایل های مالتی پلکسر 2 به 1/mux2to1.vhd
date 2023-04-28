
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1 is
port (
		  clk: in std_logic;
        sel : in std_logic;
        min0 : in std_logic;
        min1 : in std_logic;
        mout : out std_logic
    );
end mux2to1;

architecture Behavioral of mux2to1 is

begin
process(clk)
begin
if (clk'event and clk='1') then
	case sel is
		when '0'=> mout<=min0;
		when '1'=> mout<=min1;
		when others => mout<= '-';
	end case;
end if;
end process; 
end Behavioral;

