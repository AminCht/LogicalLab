--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:05:35 05/11/2023
-- Design Name:   
-- Module Name:   C:/Users/Amin/Documents/ISE PROJECTs/d-flopflop/dfloptest2.vhd
-- Project Name:  d-flopflop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dflop
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
 
ENTITY dfloptest2 IS
END dfloptest2;
 
ARCHITECTURE behavior OF dfloptest2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dflop
    PORT(
         clk : IN  std_logic;
         D : IN  std_logic;
         Q1 : OUT  std_logic;
         Q2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q1 : std_logic;
   signal Q2 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dflop PORT MAP (
          clk => clk,
          D => D,
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
       for i in 20 downto 0 loop
		 D<=not D;
		 wait for 50 ns;	
			end loop;
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
