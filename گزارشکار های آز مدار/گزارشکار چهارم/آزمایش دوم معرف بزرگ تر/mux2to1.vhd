
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1 is
port (
        sel : in std_logic;
        min0 : in std_logic_vector(3 downto 0);
        min1 : in std_logic_vector(3 downto 0);
        mout : out std_logic_vector(3 downto 0)
    );
end mux2to1;

architecture Behavioral of mux2to1 is

begin
process(min0,min1,sel)
begin
	case sel is
		when '0'=> mout<=min0;
		when '1'=> mout<=min1;
		when others => mout<= "0000";
	end case;
end process; 
end Behavioral;

