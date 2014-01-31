--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:14:03 01/13/2014
-- Design Name:   
-- Module Name:   C:/LBYCP1E_EQ/Experiments/mux_2x1_tb.vhd
-- Project Name:  Experiments
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_2x1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux_2x1_tb IS
END mux_2x1_tb;
 
ARCHITECTURE behavior OF mux_2x1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_2x1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
			c,d: in STD_LOGIC;
         s,s2 : in  STD_LOGIC;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
	signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal s : std_logic := '0';
	signal s2 : std_logic := '0';
 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2x1 PORT MAP (a,b,c,d,s2,s,y);
	-- Clock process definitions
	
   
	process
	begin
		wait for 10 ns;
		a <= not a;
	end process;
	
	process
	begin
		wait for 20 ns;
		b <= not b;
	end process;
	
	process
	begin
		wait for 40 ns;
		c <= not c;
	end process;
	
	process
	begin
		wait for 80 ns;
		d <= not d;
	end process;

	process
	begin
		wait for 160 ns;
		s <= not s;
	end process;
	
	process
	begin
		wait for 320 ns;
		s2 <= not s2;
	end process;
	
	--wait;
   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--		a <= '0';
--		b <= '0';
--		s <= '0';
--		
--		wait for 10 ns;
--		
--		a <= '0';
--		b <= '0';
--		s <= '1';
--		
--		wait for 10 ns;
--		
--		a <= '0';
--		b <= '1';
--		s <= '0';
--		
--		wait for 10 ns;
--		
--		a <= '0';
--		b <= '1';
--		s <= '1';
--		
--		wait for 10 ns;
--		
--		a <= '1';
--		b <= '0';
--		s <= '0';
--		
--		wait for 10 ns;
--		
--		a <= '1';
--		b <= '0';
--		s <= '1';
--		
--		wait for 10 ns;
--		
--		a <= '1';
--		b <= '1';
--		s <= '0';
--		
--		wait for 10 ns;
--		
--		a <= '1';
--		b <= '1';
--		s <= '1';
--		
--		wait for 10 ns;
--      --wait for <clock>_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
