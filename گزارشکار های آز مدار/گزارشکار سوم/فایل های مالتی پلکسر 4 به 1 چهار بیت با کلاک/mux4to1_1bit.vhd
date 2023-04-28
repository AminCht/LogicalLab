library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux4to1_1bit is
  port (
		  clk: in std_logic;
        sel : in std_logic_vector(1 downto 0);
        min0 : in std_logic;
        min1 : in std_logic;
        min2 : in std_logic;
        min3 : in std_logic;
        mout : out std_logic
    );
end mux4to1_1bit;

architecture Behavioral of mux4to1_1bit is

begin
process(clk)
begin
if (clk'event and clk='1') then
	case sel is
		when "00"=> mout<=min0;
		when "01"=> mout<=min1;
		when "10"=> mout<=min2;
		when "11"=> mout<=min3;
		when others => mout<= '-';
		end case;
end if;
end process;
end Behavioral;

