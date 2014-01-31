--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:25:53 01/27/2014
-- Design Name:   
-- Module Name:   C:/Users/Reich/Documents/DLSU ACAD FOLDER/TERM 9/LBYCP1E/Experiments/t_ff_tb.vhd
-- Project Name:  Experiments
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ff
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
 
ENTITY t_ff_tb IS
END t_ff_tb;
 
ARCHITECTURE behavior OF t_ff_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ff
    PORT(
         t : IN  std_logic;
         clk : IN  std_logic;
         qt : OUT  std_logic;
         qnt : OUT  std_logic;
         reset : IN  std_logic;
         s : IN  std_logic;
         r : IN  std_logic;
         j : IN  std_logic;
         k : IN  std_logic;
         d : IN  std_logic;
         qs : OUT  std_logic;
         qns : OUT  std_logic;
         qj : OUT  std_logic;
         qnj : OUT  std_logic;
         qd : OUT  std_logic;
         qnd : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal t : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal s : std_logic := '0';
   signal r : std_logic := '0';
   signal j : std_logic := '0';
   signal k : std_logic := '0';
   signal d : std_logic := '0';

 	--Outputs
   signal qt : std_logic;
   signal qnt : std_logic;
   signal qs : std_logic;
   signal qns : std_logic;
   signal qj : std_logic;
   signal qnj : std_logic;
   signal qd : std_logic;
   signal qnd : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ff PORT MAP (
          t => t,
          clk => clk,
          qt => qt,
          qnt => qnt,
          reset => reset,
          s => s,
          r => r,
          j => j,
          k => k,
          d => d,
          qs => qs,
          qns => qns,
          qj => qj,
          qnj => qnj,
          qd => qd,
          qnd => qnd
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
      wait;
		
   end process;
	
	process 
	begin
		reset <= '1';
		wait for 10 ns;
		reset <= '0';
		wait for 10 ns;
		t <= not t;
		wait for 10 ns;
		d <= not d;
		wait for 20 ns;
		r <= not r;
		wait for 40 ns;
		s <= not s;
		wait for 80 ns;
		k <= not k;
		wait for 160 ns;
		j <= not j;
		wait for 320 ns;
		
	end process;
END;
