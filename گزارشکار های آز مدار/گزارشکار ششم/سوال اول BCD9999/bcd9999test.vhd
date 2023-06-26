
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY bcd9999test IS
END bcd9999test;
 
ARCHITECTURE behavior OF bcd9999test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCD9999
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         Q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCD9999 PORT MAP (
          clk => clk,
          reset => reset,
          Q => Q
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
	
    wait for 25 ns;
   reset <= not reset;
      wait;
      -- insert stimulus here 

      wait;
   end process;

END;
