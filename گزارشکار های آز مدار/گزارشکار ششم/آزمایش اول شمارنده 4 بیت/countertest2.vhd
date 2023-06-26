
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY countertest2 IS
END countertest2;
 
ARCHITECTURE behavior OF countertest2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter
    PORT(
         clk : IN  std_logic;
         set : IN  std_logic;
         reset : IN  std_logic;
			clr: IN std_logic;
         Q : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal set : std_logic := '0';
   signal reset : std_logic := '0';
	signal clr : std_logic := '0';
	--BiDirs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Counter PORT MAP (
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
        wait for 25 ns;
    reset <= '1';
        wait for 200 ns;
    clr <= not clr;
	 wait for 20 ns;
	 clr<= not clr;
	 
      wait;
   end process;

END;
