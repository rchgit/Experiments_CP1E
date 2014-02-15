----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:41:45 02/10/2014 
-- Design Name: 
-- Module Name:    bitGen_min - Behavioral 
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

entity bitGen_min is
    Port ( bright : in  STD_LOGIC;
           hCount : in  STD_LOGIC_VECTOR (31 downto 0);
           vCount : in  STD_LOGIC_VECTOR (31 downto 0);
           rgb : out  STD_LOGIC_VECTOR (2 downto 0));
end bitGen_min;

architecture Behavioral of bitGen_min is

begin


end Behavioral;

