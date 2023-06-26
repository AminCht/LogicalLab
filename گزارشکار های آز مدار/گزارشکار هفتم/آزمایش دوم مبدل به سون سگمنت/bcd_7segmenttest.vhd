
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY bcd_7segmenttest IS
END bcd_7segmenttest;
 
ARCHITECTURE behavior OF bcd_7segmenttest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd_7segment
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         segment : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal segment : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd_7segment PORT MAP (
          A => A,
          segment => segment
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      for i in 1 downto 0 loop 
			A(0)<=not A(0);
		for j in 1 downto 0 loop 
			A(1)<=not A(1);
			for k in 1 downto 0 loop 
			A(2)<=not A(2);
			for l in 1 downto 0 loop 
			A(3)<=not A(3);
			wait for 50 ns;
			end loop;
			end loop;
			end loop;
			end loop;
      -- insert stimulus here 

      wait;
   end process;

END;
