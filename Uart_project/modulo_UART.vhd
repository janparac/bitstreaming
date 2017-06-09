

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity modulo_UART is
  generic (
    clocNUM : integer := 10416 --Baud period
    );
  port (
    clk       : in  std_logic;
    i_OK     : in  std_logic;--switch for activate the output
    i_ByteSS   : in  std_logic_vector(9 downto 0); -- incoming byte
    o_final : out std_logic; --end of the char flag
    o_Uart_out : out std_logic --trasmission pin
    );
end modulo_UART;
 

architecture Behavioral of modulo_UART is


signal r_index : integer range 0 to 9 := 0;--bit of the byte
signal r_count_bit : integer range 0 to clocNUM :=0;--timer for the single bit

begin

process (i_OK,clk) begin

if  rising_edge(clk)  then
    if  i_OK = '1' then
        if r_count_bit = (clocNUM - 1) then
            r_count_bit <= 0;
                if r_index = 9 then
                r_index <= 0;
                else r_index <= r_index + 1 ;     
                end if;
            else r_count_bit <= r_count_bit + 1 ;
                o_Uart_out<=i_ByteSS(r_index);
        end if;
        else o_Uart_out <='1';
            r_index<=0;
            r_count_bit<=0;  
    end if;
end if;

end process;


o_final <= '1' when (r_count_bit = clocNUM - 1 and r_index = 9 )
               else '0';

end Behavioral;
