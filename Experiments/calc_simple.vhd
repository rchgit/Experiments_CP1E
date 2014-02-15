----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:12:13 02/03/2014 
-- Design Name: 
-- Module Name:    calc_simple - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity calc_simple is
    Port ( number : in  STD_LOGIC_VECTOR (3 downto 0);
           add : in  STD_LOGIC;
           sub : in  STD_LOGIC;
           equ : in  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (3 downto 0);
			  clk: in STD_LOGIC;
			  reset: in STD_LOGIC);
end calc_simple;

architecture Behavioral of calc_simple is
type states is (IDLE,sum,diff,output);
signal cur_state, next_state: states;
signal numTemp,resTemp : STD_LOGIC_VECTOR (3 downto 0);
begin
	state_mem: process(clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				cur_state <= IDLE;
				--result <= "0000";				
			else
				cur_state <= next_state;
			end if;
		end if;
	end process;
	
	next_state_logic: process(add,sub,equ,cur_state)
	begin
		if cur_state = IDLE then
			if add = '1' then
				next_state <= sum;
			else 
				if sub = '1' then
					next_state <= diff;
				else
					next_state <= IDLE;
				end if;
			end if;
		elsif cur_state = sum then
			if equ = '1' then
				next_state <= IDLE;
			else
				next_state <= sum;
			end if;
		elsif cur_state = diff then
			if equ = '1' then
				next_state <= IDLE;
			else
				next_state <= diff;
			end if;
		else
			next_state <= IDLE;
		end if;
	end process;
	
	output_dec: process(cur_state,reset,number)
	begin
		if reset = '1' then
			numTemp <= "0000";
			resTemp <= "0000";
			result <= "ZZZZ";
		elsif cur_state = IDLE then
			numTemp <= number;
			--resTemp <= resTemp;
			result <= resTemp;
		elsif cur_state = sum then
			numTemp <= numTemp;
			resTemp <= numTemp + number;
			result <= "ZZZZ";
		elsif cur_state = diff then
			numTemp <= numTemp;
			resTemp <= numTemp - number;
			result <= "ZZZZ";
		else
			numTemp <= numTemp;
			resTemp <= resTemp;
			result <= "ZZZZ";	
		end if;
	end process;

end Behavioral;

