
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY counter32test IS
END counter32test;
 
ARCHITECTURE behavior OF counter32test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter32
    PORT(
         clk : IN  std_logic;
         set : IN  std_logic;
         reset : IN  std_logic;
         clr : IN  std_logic;
         Q : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal set : std_logic := '0';
   signal reset : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter32 PORT MAP (
          clk => clk,
          set => set,
          reset => reset,
          clr => clr,
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
    set <= not set;
        wait for 50 ns;
		reset <= not reset;
      wait for 25 ns;
    clr <= not clr;
	 wait for 50 ns;
    clr <= not clr;

     wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
