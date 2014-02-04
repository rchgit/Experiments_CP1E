--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:49:04 02/03/2014
-- Design Name:   
-- Module Name:   C:/Users/Reich/Documents/GitHub/Experiments_CP1E/Experiments/calc_simple_tb.vhd
-- Project Name:  Experiments
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: calc_simple
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
 
ENTITY calc_simple_tb IS
END calc_simple_tb;
 
ARCHITECTURE behavior OF calc_simple_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT calc_simple
    PORT(
         number : IN  std_logic_vector(3 downto 0);
         add : IN  std_logic;
         sub : IN  std_logic;
         equ : IN  std_logic;
         result : OUT  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal number : std_logic_vector(3 downto 0) := (others => '0');
   signal add : std_logic := '0';
   signal sub : std_logic := '0';
   signal equ : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: calc_simple PORT MAP (
          number => number,
          add => add,
          sub => sub,
          equ => equ,
          result => result,
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
		wait for 100 ns;
		reset <= '0';
		number <= "0100";
		wait for 100 ns;
		add <= '1';
		wait for 100 ns;
		add <= '0';
		number <= "0010";
		wait for 100 ns;
		equ <= '1';
		wait for 100 ns;
		equ <= '0';
		
		number <= "0100";
		wait for 100 ns;
		sub <= '1';
		wait for 100 ns;
		sub <= '0';
		number <= "0010";
		wait for 100 ns;
		equ <= '1';
		wait for 100 ns;
		equ <= '0';
		
		
      wait;
   end process;

END;
