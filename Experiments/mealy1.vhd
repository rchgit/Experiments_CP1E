----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:19:46 01/27/2014 
-- Design Name: 
-- Module Name:    mealy1 - Behavioral 
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

entity mealy1 is
    Port ( start : in  STD_LOGIC;
           I : in  STD_LOGIC;
           X : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end mealy1;

architecture Behavioral of mealy1 is
type states is (IDLE,S0,S1,S2);
signal cur_state, next_state: states;
signal xtemp: STD_LOGIC;

begin
X <= xtemp;
	state_mem: process(clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				cur_state <= IDLE;
			else
				cur_state <= next_state;
			end if;
		end if;
	end process;
	
	next_state_logic: process(start,I,cur_state,xtemp)
	begin
		if cur_state = IDLE then
			if start = '0' then
				next_state <= IDLE;
			elsif start = '1' and xtemp = '0' then
				next_state <= S0;
			end if;
		elsif cur_state = S0 then
			if I = '0' and xtemp <= '1' then
				next_state <= S1;
			elsif I = '1' and xtemp <= '1' then
				next_state <= S2;
			end if;
		elsif cur_state = S1 then
			if I = '1' and xtemp <= '0' then
				next_state <= S1;
			elsif I = '0' and xtemp <= '1' then
				next_state <= S2;
			end if;
		elsif cur_state = S2 then
			next_state <= IDLE;
		end if;
	end process;
	
	output_dec: process(start,I,cur_state,xtemp)
	begin
		if cur_state = IDLE then
			xtemp <= '0';
		elsif cur_state = S0 then
			xtemp <= '1';
		elsif cur_state = S1 then
			if I = '1' then
				xtemp <= '0';
			elsif I = '0' then
				xtemp <= '1';
			end if;
		elsif cur_state = S2 then
			xtemp <= '1';
		end if;
	end process;
end Behavioral;

