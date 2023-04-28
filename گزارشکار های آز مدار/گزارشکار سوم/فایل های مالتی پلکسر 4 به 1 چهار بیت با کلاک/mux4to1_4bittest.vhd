
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux4to1_4bittest IS
END mux4to1_4bittest;
 
ARCHITECTURE behavior OF mux4to1_4bittest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4to1_4bit
    PORT(
         clk : IN  std_logic;
         sel : IN  std_logic_vector(1 downto 0);
         min0 : IN  std_logic_vector(3 downto 0);
         min1 : IN  std_logic_vector(3 downto 0);
         min2 : IN  std_logic_vector(3 downto 0);
         min3 : IN  std_logic_vector(3 downto 0);
         mout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal sel : std_logic_vector(1 downto 0) := (others => '0');
   signal min0 : std_logic_vector(3 downto 0) := (others => '0');
   signal min1 : std_logic_vector(3 downto 0) := (others => '0');
   signal min2 : std_logic_vector(3 downto 0) := (others => '0');
   signal min3 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal mout : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4to1_4bit PORT MAP (
          clk => clk,
          sel => sel,
          min0 => min0,
          min1 => min1,
          min2 => min2,
          min3 => min3,
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
       for n in 3 downto 0 loop
        min0(n)<=not(min0(n));
        for t in 3 downto 0 loop
         min1(t)<=not(min1(t));
         for k in 3 downto 0 loop
           min2(k)<=not(min2(k));
           for m in 3 downto 0 loop
             min3(m)<=not(min3(m));
                 for i in 1 downto 0 loop
                    sel(i)<=not(sel(i));
                    wait for 3 ns;
                 end loop;
                end loop;
              end loop;
          end loop;
         end loop;

      wait for clk_period*10;


      wait;
   end process;

END;
