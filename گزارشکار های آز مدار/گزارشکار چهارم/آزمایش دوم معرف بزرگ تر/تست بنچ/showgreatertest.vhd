
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY showgreatertest IS
END showgreatertest;
 
ARCHITECTURE behavior OF showgreatertest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT showgreater
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal C : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: showgreater PORT MAP (
          A => A,
          B => B,
          C => C
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      for i in 1 downto 0 loop
			A(0)<=not A(0);
			for j in 1 downto 0 loop
				A(1)<=not A(1);
				for k in 1 downto 0 loop
					A(2)<=not A(2);
					for l in 1 downto 0 loop
						A(3)<=not A(3);
						for m in 1 downto 0 loop
							B(0)<=not B(0);
							for n in 1 downto 0 loop
								B(1)<=not B(1);
								for o in 1 downto 0 loop
									B(2)<=not B(2);
									for p in 1 downto 0 loop
										B(3)<=not B(3);
										wait for 5 ns;
									end loop;
								end loop;
							end loop;
						end loop;
				end loop;
			end loop;
			end loop;
		end loop;
      wait;
   end process;

END;
