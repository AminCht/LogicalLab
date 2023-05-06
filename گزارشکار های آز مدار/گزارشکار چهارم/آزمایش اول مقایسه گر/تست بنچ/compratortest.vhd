
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY compratortest IS
END compratortest;
 
ARCHITECTURE behavior OF compratortest IS 
 
    COMPONENT comprator
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         F : OUT  std_logic;
         G : OUT  std_logic;
         H : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal F : std_logic;
   signal G : std_logic;
   signal H : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comprator PORT MAP (
          A => A,
          B => B,
          F => F,
          G => G,
          H => H
        );

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

      -- insert stimulus here 

      wait;
   end process;

END;
