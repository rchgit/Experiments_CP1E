----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:14:50 01/13/2014 
-- Design Name: 
-- Module Name:    hello_world - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hello_world is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           w : out  STD_LOGIC;
           x : out  STD_LOGIC;
           y : out  STD_LOGIC;
           z : out  STD_LOGIC);
end hello_world;

architecture Behavioral of hello_world is

begin
	process (a,b) -- (a,b) is called "sensitivity list". looks like optional parameters to a function
	begin
		if a = '0' and b = '0' then
			w <= '1';
			x <= '0';
			y <= '0';
			z <= '0';
		elsif a = '0' and b = '1' then
			w <= '0';
			x <= '1';
			y <= '0';
			z <= '0';
		elsif a = '1' and b = '0' then
			w <= '0';
			x <= '0';
			y <= '1';
			z <= '0';
		elsif a = '1' and b = '1' then
			w <= '0';
			x <= '0';
			y <= '0';
			z <= '1';	
		end if;
	end process;
end Behavioral;

