----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2017 11:35:46
-- Design Name: 
-- Module Name: led_pwm - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;--viene segnato in rosso ma funziona lo stesso
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;--per conversione integer binario



entity led_pwm is

    Port ( clk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR(3 downto 0));
           --test : out std_logic);
end led_pwm;

architecture Behavioral of led_pwm is

component pwm
	generic(
		max_val: integer ;
		dutybit: integer --cio� integer fino a 1024
	);
	port(
		clk: in std_logic;
		duty: in std_logic_vector((dutybit -1) downto 0);
		pulse: out std_logic
	); 
end component;


signal q : std_logic;
signal counter : std_logic_vector(31 downto 0):= (others=>'0');
signal pilot,fun : std_logic_vector (15 downto 0):= (others=>'0');
signal countpilot : std_logic_vector(10 downto 0):= (others=>'0');
type romtype is array (0 to 1000) of std_logic_vector (15 downto 0);
signal myrom: romtype;

begin

process(clk)

begin

if (clk'event and clk='1') then

    if counter<399999 then --cambio valori PWM quindi frequenza sinusoide
    counter<= counter +1;
    elsif counter>= 399999 then
    counter <= (others=>'0');
        if (pilot < 1000) then 
        pilot<=pilot+1;
        
        else  q<='0';
       end if;
        if (pilot>1 and q='0') then
        pilot<=pilot-1;
        elsif (pilot=1 and q='0') then
         q<='1';
        end if;
    end if;
  
end if;

end process;




genrom : for i in 1000 downto 0 generate

--constant x : std_logic_vector(15 downto 0) :=std_logic_vector(to_unsigned(i,16));
constant x: real := cos(real(i)*MATH_PI / (real(1000) ) );

constant xn: std_logic_vector (15 downto 0):= std_logic_vector(to_unsigned(integer(x*real(500)+real(500)),16));
begin
myrom(i)<= xn;
end generate genrom;

fun<=myrom(to_integer(signed(pilot)));

led0 : pwm GENERIC MAP (max_val=>1000, dutybit=>16) PORT MAP (clk=>clk,duty=>fun,pulse=>led(0));
--led1 : pwm GENERIC MAP (max_val=>1000, dutybit=>10) PORT MAP (clk=>clk,val_cur=>std_logic_vector(pilot),pulse=>led(1));
--led2 : pwm GENERIC MAP (max_val=>10000000, dutybit=>32) PORT MAP (clk=>clk,val_cur=>std_logic_vector(to_unsigned(9000000,32)),pulse=>led(2));
--led3 : pwm GENERIC MAP (max_val=>10000000, dutybit=>32) PORT MAP (clk=>clk,val_cur=>std_logic_vector(to_unsigned(1000000,32)),pulse=>led(3));

--mygen : for i in 3 downto 0 generate

--singleled : pwm GENERIC MAP (max_val=>1000*i, dutybit=>16) PORT MAP (clk=>clk,duty=>pilot,pulse=>led(i));

--end generate mygen;

end Behavioral;
