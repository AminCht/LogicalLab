--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:42:34 05/12/2023
-- Design Name:   
-- Module Name:   C:/Users/Amin/Documents/ISE PROJECTs/jkflipflop/jkfliptest.vhd
-- Project Name:  jkflipflop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jkflipflop
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY jkfliptest IS
END jkfliptest;
 
ARCHITECTURE behavior OF jkfliptest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jkflipflop
    PORT(
         clk : IN  std_logic;
         J : IN  std_logic;
         K : IN  std_logic;
         Q1 : INOUT  std_logic;
         Q2 : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal J : std_logic := '0';
   signal K : std_logic := '0';

	--BiDirs
   signal Q1 : std_logic:='0';
   signal Q2 : std_logic:='0';

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jkflipflop PORT MAP (
          clk => clk,
          J => J,
          K => K,
          Q1 => Q1,
          Q2 => Q2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      for i in 3 downto 0 loop
			J<=not J;
			for n in 3 downto 0 loop
			 K<= not K;
			 for l in 1 downto 0 loop
			 Q1<= not K;
			 for m in 1 downto 0 loop
			 Q2<= not J;
				wait for 20 ns;
				end loop;
				end loop;
		end loop;	
		end loop;
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
