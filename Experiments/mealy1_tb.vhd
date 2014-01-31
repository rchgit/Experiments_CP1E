--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:53:26 01/27/2014
-- Design Name:   
-- Module Name:   C:/Users/Reich/Documents/DLSU ACAD FOLDER/TERM 9/LBYCP1E/Experiments/mealy1_tb.vhd
-- Project Name:  Experiments
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mealy1
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
 
ENTITY mealy1_tb IS
END mealy1_tb;
 
ARCHITECTURE behavior OF mealy1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mealy1
    PORT(
         start : IN  std_logic;
         I : IN  std_logic;
         X : OUT  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal start : std_logic := '0';
   signal I : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal X : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mealy1 PORT MAP (
          start => start,
          I => I,
          X => X,
          clk => clk,
          reset => reset
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
		wait for 10 ns;
		
		I <= '0';
		start <= '0';
		wait for 5*clk_period;
		
		I <= '0';
		start <= '1';
		wait for clk_period;
		
		I <= '0';
		start <= '0';
		wait for clk_period;
		
		I <= '1';
		wait for clk_period;
		
		I <= '0';
		wait for clk_period;
		
		I <= '1';
		wait for 5*clk_period;
		
		start <= '1';
		wait for clk_period;
		
		I <= '1';
		start <= '0';
		wait for clk_period;
		
      wait;
   end process;

END;
