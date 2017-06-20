

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;--undelined as error but it works
use ieee.std_logic_unsigned.all; -- for + sign
use ieee.numeric_std.all;--for type conversion


entity Func_Gen_PWM is

 Port (    i_clk : in STD_LOGIC;
          -- i_res : in STD_LOGIC;
           i_btn : in STD_LOGIC_VECTOR (3 downto 0 );
           o_test : out STD_LOGIC;     
           o_sig : out STD_LOGIC);

end Func_Gen_PWM;

architecture Behavioral of Func_Gen_PWM is

component Sine_Gen is

 generic ( g_res :  integer := 100 --must be equal to g_max of the PWM_gen because this is the number of different value of the ROM
            );

 Port (    i_clk : in STD_LOGIC;
           i_T : in std_logic_vector(31 downto 0);
           i_res : in STD_LOGIC;     
           o_sig : out STD_LOGIC);

end component;

signal s_T : std_logic_vector(31 downto 0);
signal s_res : STD_LOGIC;

begin

process (i_clk) begin
   if rising_edge(i_clk) then
      case i_btn is
        when "0001" => s_T <=std_logic_vector(to_unsigned(49999,32));
                       s_res <= '0';
        when "0010" => s_T <=std_logic_vector(to_unsigned(4999,32));
                       s_res <= '0';
        when "0100" => s_T <=std_logic_vector(to_unsigned(499,32));
                                              s_res <= '0';         
        when others => s_T <=std_logic_vector(to_unsigned(49999,32));
                        s_res <= '1';
      end case;

   end if;
end process;

sine1 : Sine_Gen generic map (g_res=>100) port map (i_clk=>i_clk,  i_T=>s_T,  i_res=>s_res,  o_sig=>o_sig);

o_test<= i_clk;

end Behavioral;


--case INT_A is
--  when 0      =>  Z <= A;
--  when 1 to 3 =>  Z <= B;
--  when 4|6|8  =>  Z <= C;
--  when others =>  Z <= 'X';
--end case;