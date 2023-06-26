
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY bcdtest2 IS
END bcdtest2;
 
ARCHITECTURE behavior OF bcdtest2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCD_2
    PORT(
         clk : IN  std_logic;
			--set: IN std_logic;
         reset : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
	--signal set : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCD_2 PORT MAP (
          clk => clk,
			 --set => set,
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
   end process;

END;
