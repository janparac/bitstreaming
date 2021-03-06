library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all; -- for + sign
use ieee.numeric_std.all;--for type conversion




entity Triangle_Gen is

 generic ( g_resol :  integer := 100 --must be equal to g_max of the PWM_gen because this is the number of different value of the ROM
            );

 Port (    i_clk : in STD_LOGIC;
           i_T : in std_logic_vector(17 downto 0);
           i_res : in STD_LOGIC;     
           o_sig : out STD_LOGIC);

end Triangle_Gen;

architecture Behavioral of Triangle_Gen is

component PWM_gen is


generic(
		g_max: integer ;
		g_dutybit: integer 
	);
	port(
		i_clk: in std_logic;
		i_duty: in std_logic_vector((g_dutybit -1) downto 0); --the input must be a bus (even if the duty is commonly expressed as % value )
		o_pulse: out std_logic
	);


end component;



------signals declatarion-----------------------------------------
------------------------------------------------------------------
signal s_counter : std_logic_vector(17 downto 0):= (others=>'0');

signal s_q : std_logic :='1';

signal s_pilot, s_fun : std_logic_vector (15 downto 0):= (others=>'0'); --s_pilot drives the ROM, s_fun rapresents the exit of the ROM

type romtype is array (0 to g_resol) of std_logic_vector (15 downto 0); 
signal s_myrom: romtype;
----------------------------------------------------------------------
------------------------------------------------------------------------

begin

process (i_clk) begin

if rising_edge(i_clk) then

    if i_res = '1' then
        s_counter <= (others=>'0');
        s_pilot <= (others=>'0');
        s_q<='1';
    else
            if s_counter < i_T then --changing analog value rate (staircase settings)
               s_counter<= s_counter +1;
            else --trigger 
               s_counter <= (others=>'0'); 
               if (s_pilot < g_resol) then 
                s_pilot<=s_pilot+1;
               else  s_q<='0'; --direction value change
               end if;
               if (s_pilot>1 and s_q='0') then
               s_pilot<=s_pilot-1;
               elsif (s_pilot=1 and s_q='0') then
               s_q<='1';
            end if;
        end if;
    end if;--reset
  
end if; --clk

end process;




o_sig1 : PWM_gen GENERIC MAP (g_max=>g_resol, g_dutybit=>16) PORT MAP (i_clk=>i_clk,i_duty=>s_pilot,o_pulse=>o_sig);



end Behavioral;
