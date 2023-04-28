
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux2to1test IS
END mux2to1test;
 
ARCHITECTURE behavior OF mux2to1test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2to1
    PORT(
         clk : IN  std_logic;
         sel : IN  std_logic;
         min0 : IN  std_logic;
         min1 : IN  std_logic;
         mout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal sel : std_logic := '0';
   signal min0 : std_logic := '0';
   signal min1 : std_logic := '0';

 	--Outputs
   signal mout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2to1 PORT MAP (
          clk => clk,
          sel => sel,
          min0 => min0,
          min1 => min1,
          mout => mout
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
       for i in 1 downto 0 loop
        min0<=not(min0);
        for j in 1 downto 0 loop
         min1<=not(min1);
          for k in 1 downto 0 loop
             sel<=not(sel);
             wait for 100 ns;
           end loop;
         end loop;
        end loop;

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
