--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:59:21 01/27/2014
-- Design Name:   
-- Module Name:   C:/Users/Reich/Documents/DLSU ACAD FOLDER/TERM 9/LBYCP1E/Experiments/moore1_tb.vhd
-- Project Name:  Experiments
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: moore1
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
 
ENTITY moore1_tb IS
END moore1_tb;
 
ARCHITECTURE behavior OF moore1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT moore1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         x : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal x : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: moore1 PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          clk => clk,
          reset => reset,
          x => x
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		reset <= '1';
		wait for 10 ns;
		reset <= '0';
		wait;
		
		
   end process;
	process
	begin
		a <= not a;
		wait for 20 ns;
		b <= not b;
		wait for 40 ns;
		c <= not c;
		wait for 80 ns;
		d <= not d;
		wait for 160 ns;
    
	end process;
END;
