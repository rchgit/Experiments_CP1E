----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:59:05 01/27/2014 
-- Design Name: 
-- Module Name:    t_ff - Behavioral 
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

entity ff is
    Port ( t : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           qt : out  STD_LOGIC;
           qnt : out  STD_LOGIC;
           reset : in  STD_LOGIC;
			  s,r,j,k,d: in STD_LOGIC;
			  qs, qns: out std_logic;
			  qj, qnj: out std_logic;
			  qd,qnd: out std_logic);
end ff;

architecture Behavioral of ff is
signal qct,qcs,qcj,qcd: std_logic;
begin
	
	qt <= qct;
	qnt <= not qct;
	qs <= qcs;
	qns <= not qcs;
	qj <= qcj;
	qnj <= not qcj;
	qd <= qcd;
	qnd <= not qcd;
	
	t_ff: process (clk,t)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				qct <= '0';
			elsif t = '1' then
				qct <= not qct;
				
			end if;
		end if;
	end process;
	
	d_ff: process (clk,d)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				qcd <= '0';
			elsif d = '1' or d = '0' then
				qcd <= d;
				
			end if;
		end if;
	end process;

	sr_ff: process (clk,s,r)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				qcs <= '0';
			elsif s = '0' and r = '0' then
				qcs <= qcs;
			elsif s = '1' and r = '0' then
				qcs <= '1';
				
			elsif s = '0' and r = '1' then
				qcs <= '0';
				
			elsif s = '1' and r = '1' then
				qcs <= 'U';
				
			end if;
		end if;
	end process;
	
	jk_ff: process (clk,j,k)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				qcj <= '0';
			elsif j = '0' and k = '0' then
				qcj <= qcj;
			elsif j = '1' and k = '0' then
				qcj <= '1';
				
			elsif j = '0' and k = '1' then
				qcj <= '0';
				
			elsif j = '1' and k = '1' then
				qcj <= not qcj;
				
			end if;
		end if;
	end process;
	
end Behavioral;

