----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:40:39 02/10/2014 
-- Design Name: 
-- Module Name:    VGA_Controller - Behavioral 
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

entity VGA_Controller is
    Port ( clk50MHz : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           hSync : out  STD_LOGIC;
           vSync : out  STD_LOGIC;
           bright : out  STD_LOGIC;
           hCount : out  STD_LOGIC_VECTOR (31 downto 0);
           vCount : out  STD_LOGIC_VECTOR (31 downto 0));
end VGA_Controller;

architecture Behavioral of VGA_Controller is
signal count: STD_LOGIC_VECTOR(15 downto 0);
signal cnt: std_logic_vector(1 downto 0) := "00";
signal En: STD_LOGIC;
signal hPos: std_logic_vector(15 downto 0) := d"0";
signal vPos: std_logic_vector(15 downto 0) := d"0";

begin

--	En_assert: process (clk50MHz)
--	begin
--		if rising_edge(clk50MHz) then
--			cnt <= cnt + 1;
--		end if;
--		
--	end process;
--
--	hCounter: process (clk50MHz, clr)
--	begin
--		if rising_edge(clk50MHz) then
--			if falling_edge(clr) then
--				count <= "0000000000000000";
--			elsif cnt(1) = '1' then
--				count <= count + 1;
--			end if;
--		end if;			
--	end process;
--	
--	vCounter: process (clk50MHz, clr)
--	begin
--		if rising_edge(clk50MHz) then
--			if falling_edge(clr) then
--				count <= "0000000000000000";
--			elsif cnt(1) = '1' then
--				count <= count + 1;
--			end if;
--		end if;			
--	end process;

	hPosCount: process(clk50MHz)
	begin
		if rising_edge(clk50MHz) and hPos < d"1600" then
			hPos <= hPos + 1;
			if hPos >= d"0" and hPos <= d"192" then
				hSync <= '0';
--			elsif hPos >= d"192" and hPos <= d"96" then
--				hSync <= '1';
--			elsif hPos >= d"192" and hPos <= d"288" then
--				hSync <= '1';
--			elsif hPos >= d"288" and hPos <= d"1568" then
--				hSync <= '1';
			else
				vSync <= '1';
			end if;
		else
			hPos <= d"0";
		end if;
	end process;
	
	vPosCount: process(clk50MHz)
	begin
		if rising_edge(clk50MHz) and hPos = d"1600" and vPos < d"521" then
			vPos <= vPos + 1;
			if vPos >= d"0" and hPos < d"2" then
				vSync <= '0';
--			elsif hPos >= d"2" and hPos <= d"31" then
--				vSync <= '1';
--			elsif hPos >= d"" and hPos <= d"288" then
--				vSync <= '1';
--			elsif hPos >= d"288" and hPos <= d"1568" then
--				vSync <= '1';
			else
				vSync <= '1';
			end if;
		else
			vPos <= d"0";
		end if;
	end process;
	
	
	
	
	end Behavioral;

