
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY comp8bittest IS
END comp8bittest;
 
ARCHITECTURE behavior OF comp8bittest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comp8bit
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         C : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal C : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comp8bit PORT MAP (
          A => A,
          B => B,
          C => C
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
		for z in 1 downto 0 loop
        A(0)<=not(A(0));
       for i in 1 downto 0 loop
        A(1)<=not(A(1));
        for j in 1 downto 0 loop
        A(2)<=not(A(2));
		  for k in 1 downto 0 loop
        A(3)<=not(A(3));
		  for r in 1 downto 0 loop
        A(4)<=not(A(6));
		  for l in 1 downto 0 loop
        A(5)<=not(A(5));
		  for m in 1 downto 0 loop
        A(6)<=not(A(6));
		  for n in 1 downto 0 loop
        A(7)<=not(A(7));
		  for o in 1 downto 0 loop
        B(0)<=not(B(0));
		  for p in 1 downto 0 loop
        B(1)<=not(B(1));
		  for s in 1 downto 0 loop
        B(2)<=not(B(2));
		  for t in 1 downto 0 loop
        B(3)<=not(B(3));
		  for u in 1 downto 0 loop
        B(4)<=not(B(4));
		  for w in 1 downto 0 loop
        B(5)<=not(B(5));
		  for x in 1 downto 0 loop
        B(6)<=not(B(6));
		  for y in 1 downto 0 loop
        B(7)<=not(B(7));
		  wait for 3 ns;
		  end loop;
		  end loop;
		  end loop;
		  end loop;
		  end loop;
		  end loop;
		  end loop;
		  end loop;
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
