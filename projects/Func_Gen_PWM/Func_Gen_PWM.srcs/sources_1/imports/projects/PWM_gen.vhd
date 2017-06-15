
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity PWM_gen is
generic(
		g_max: integer ;-- period of the square wave : max value of system clk summation
		g_dutybit: integer -- length of the duty bus input (it must be able to contain the g_max ! )
	);
	port(
		i_clk: in std_logic;
		i_duty: in std_logic_vector((g_dutybit -1) downto 0); --the input must be a bus (even if the duty is commonly expressed as % value )
		o_pulse: out std_logic
	);


end PWM_gen;

architecture Behavioral of PWM_gen is

signal s_count: std_logic_vector((g_dutybit -1) downto 0);

begin


--counter for periodic signal generation
process(i_clk)
begin
	if rising_edge(i_clk) then
		if (s_count < (g_max-1)) then
			s_count <= s_count + 1;
		else
			s_count <= (others => '0');
		end if;
	end if;
end process;


--square wave generator (it says when the signal is '1' 
--during the above period)
process(i_clk) 
begin
	if rising_edge(i_clk) then
		if (i_duty > s_count ) then
			o_pulse <= '1';
		else
			o_pulse <= '0';
		end if;
	end if;
end process;

end Behavioral;
