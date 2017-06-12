----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2017 11:32:04
-- Design Name: 
-- Module Name: duty - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pwm is
	generic(
		max_val: integer ;--corrisponde a una frequenza >10 KHz per matchare l'RC del led
		dutybit: integer --cioè integer fino a 1024
	);
	port(
		clk: in std_logic;
		duty: in std_logic_vector((dutybit -1) downto 0);
		pulse: out std_logic
	);
end entity;

architecture arch of pwm is
	signal cnt: std_logic_vector((dutybit -1) downto 0);
	
begin

process(clk) -- Counting
begin
	if(clk'event and clk = '1') then
		if (cnt < (max_val-1)) then
			cnt <= cnt + 1;
		else
			cnt <= (others => '0');
		end if;
	end if;
end process;

process(clk) -- Pulsing
begin
	if(clk'event and clk = '1') then
		if (duty > cnt) then
			pulse <= '1';
		else
			pulse <= '0';
		end if;
	end if;
end process;

end arch;