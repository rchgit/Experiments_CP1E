--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:42:12 01/13/2014
-- Design Name:   
-- Module Name:   C:/LBYCP1E_EQ/Experiments/hello_world_tb.vhd
-- Project Name:  Experiments
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: hello_world
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
 
ENTITY hello_world_tb IS
END hello_world_tb;
 
ARCHITECTURE behavior OF hello_world_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hello_world
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         w : OUT  std_logic;
         x : OUT  std_logic;
         y : OUT  std_logic;
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal w : std_logic;
   signal x : std_logic;
   signal y : std_logic;
   signal z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: hello_world PORT MAP (
          a => a,
          b => b,
          w => w,
          x => x,
          y => y,
          z => z
        );

   -- Clock process definitions
   process
   begin
		
		wait for 10 ns;
		
		
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	
      

      -- insert stimulus here 
		a <= '0';
		b <= '0';
		wait for 10 ns;
		
		a <= '0';
		b <= '1';
		wait for 10 ns;
		
		a <= '1';
		b <= '0';
		wait for 10 ns;
		
		a <= '1';
		b <= '1';
		wait for 10 ns;

      wait;
   end process;

END;
