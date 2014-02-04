----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:56:02 01/27/2014 
-- Design Name: 
-- Module Name:    moore1 - Behavioral 
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

entity moore1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  clk: in STD_LOGIC;
			  reset: in STD_LOGIC;
           x : out  STD_LOGIC_VECTOR (3 downto 0));
end moore1;

architecture Behavioral of moore1 is
type states is (S0,S1,S2,S3);
signal cur_state, next_state: states;

begin
	state_mem: process(clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				cur_state <= S0;
				x <= "0001";
			else
				cur_state <= next_state;
			end if;
		end if;
	end process;
	
	next_state_logic: process(a,b,c,d,cur_state)
	begin
		if cur_state = S0 then
			if a = '0' then
				next_state <= S1;
				--x <= "0010";
			elsif a = '1' then
				next_state <= S0;
				--x <= "0001";
			end if;
		elsif cur_state = S1 then
			if b = '0' then
				next_state <= S1;
				--x <= "0010";
			elsif b = '1' then
				next_state <= S2;
				--x <= "0100";
			end if;
		elsif cur_state = S2 then
			if c = '1' then
				next_state <= S2;
				--x <= "0100";
			elsif c = '0' then
				next_state <= S3;
				--x <= "1000";
			end if;
		elsif cur_state = S3 then
			if d = '0' then
				next_state <= S3;
				--x <= "1000";
			elsif d = '1' then
				next_state <= S0;
				--x <= "0001";
			end if;
		end if;
	end process;
	
	output_dec: process(a,b,c,d,cur_state)
	begin
		if cur_state = S0 then
			if a = '0' then
				--next_state <= S1;
				x <= "0010";
			elsif a = '1' then
				next_state <= S0;
				--x <= "0001";
			end if;
		elsif cur_state = S1 then
			if b = '0' then
				next_state <= S1;
				--x <= "0010";
			elsif b = '1' then
				next_state <= S2;
				--x <= "0100";
			end if;
		elsif cur_state = S2 then
			if c = '1' then
				next_state <= S2;
				--x <= "0100";
			elsif c = '0' then
				next_state <= S3;
				--x <= "1000";
			end if;
		elsif cur_state = S3 then
			if d = '0' then
				next_state <= S3;
				--x <= "1000";
			elsif d = '1' then
				next_state <= S0;
				--x <= "0001";
			end if;
		end if;
	end process;
end Behavioral;

