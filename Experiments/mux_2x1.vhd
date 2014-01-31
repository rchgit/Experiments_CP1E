----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:10:47 01/13/2014 
-- Design Name: 
-- Module Name:    mux_2x1 - Behavioral 
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

entity mux_2x1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c,d: in STD_LOGIC;
           s,s2 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end mux_2x1;

architecture Behavioral of mux_2x1 is

begin
	process (a,b,c,d,s,s2)
	begin
		if s = '0' and s2 = '0' then
			y <= a;
		elsif s = '0' and s2 = '1' then
			y <= b;
		elsif s = '1' and s2 = '0' then
			y <= c;
		elsif s = '1' and s2 = '1' then
			y <= d;
		--else 
		--	y <= '0';
		end if;
	end process;

end Behavioral;

