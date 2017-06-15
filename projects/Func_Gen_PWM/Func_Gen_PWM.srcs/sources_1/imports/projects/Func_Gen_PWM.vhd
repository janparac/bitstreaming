

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;--undelined as error but it works
use ieee.std_logic_unsigned.all; -- for + sign
use ieee.numeric_std.all;--for type conversion


entity Func_Gen_PWM is

 Port (    i_clk : in STD_LOGIC;
           o_led : out STD_LOGIC_VECTOR(3 downto 0));

end Func_Gen_PWM;

architecture Behavioral of Func_Gen_PWM is

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
signal s_counter : std_logic_vector(31 downto 0):= (others=>'0');

signal s_q : std_logic;

signal s_pilot, s_fun : std_logic_vector (15 downto 0):= (others=>'0');

type romtype is array (0 to 1000) of std_logic_vector (15 downto 0);
signal s_myrom: romtype;
----------------------------------------------------------------------
------------------------------------------------------------------------

begin

process (i_clk) begin

if rising_edge(i_clk) then

    if s_counter<399999 then --changing analog value rate (staircase settings)
        s_counter<= s_counter +1;
    elsif s_counter>= 399999 then --trigger 
        s_counter <= (others=>'0'); 
        if (s_pilot < 1000) then 
            s_pilot<=s_pilot+1;
        else  s_q<='0'; --direction value change
        end if;
        if (s_pilot>1 and s_q='0') then
        s_pilot<=s_pilot-1;
        elsif (s_pilot=1 and s_q='0') then
         s_q<='1';
        end if;
    end if;
  
end if;

end process;




genrom : for i in 1000 downto 0 generate

--constant x : std_logic_vector(15 downto 0) :=std_logic_vector(to_unsigned(i,16));
constant x: real := cos(real(i)*MATH_PI / (real(1000) ) );

constant xn: std_logic_vector (15 downto 0):= std_logic_vector(to_unsigned(integer(x*real(500)+real(500)),16));
begin
s_myrom(i)<= xn;
end generate genrom;

s_fun<=s_myrom(to_integer(signed(s_pilot)));

led0 : PWM_gen GENERIC MAP (g_max=>1000, g_dutybit=>16) PORT MAP (i_clk=>i_clk,i_duty=>s_fun,o_pulse=>o_led(0));
--led1 : pwm GENERIC MAP (max_val=>1000, dutybit=>10) PORT MAP (clk=>clk,val_cur=>std_logic_vector(pilot),pulse=>led(1));
--led2 : pwm GENERIC MAP (max_val=>10000000, dutybit=>32) PORT MAP (clk=>clk,val_cur=>std_logic_vector(to_unsigned(9000000,32)),pulse=>led(2));
--led3 : pwm GENERIC MAP (max_val=>10000000, dutybit=>32) PORT MAP (clk=>clk,val_cur=>std_logic_vector(to_unsigned(1000000,32)),pulse=>led(3));

--mygen : for i in 3 downto 0 generate

--singleled : pwm GENERIC MAP (max_val=>1000*i, dutybit=>16) PORT MAP (clk=>clk,duty=>pilot,pulse=>led(i));

--end generate mygen;


end Behavioral;
