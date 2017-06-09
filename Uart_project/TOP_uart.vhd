library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 


entity TOP_uart is
    Port ( butt : in STD_LOGIC;
           sign : out STD_LOGIC;
           clk : in STD_LOGIC);
end TOP_uart;

architecture Behavioral of TOP_uart is


component modulo_UART is
  generic (
    clocNUM : integer 
    );
  port (
    clk       : in  std_logic;
    i_OK     : in  std_logic;
    i_ByteSS   : in  std_logic_vector(9 downto 0); 
    o_final : out std_logic;
    o_Uart_out : out std_logic 
    );
end component;

component worder_UART is
  generic (numlet: integer
            );
    Port ( clk : in STD_LOGIC;
            i_go : in std_logic;
           i_final: in std_logic;
           i_word : in STD_LOGIC_VECTOR ((numlet*8)-1 downto 0);
           o_letter : out STD_LOGIC_VECTOR (9 downto 0);
           o_en : out STD_LOGIC
           );
end component;

--------------------------------------------------------------------
------------example of word end Baude rate setting------------------
--------------------------------------------------------------------
constant myclocNUM : integer := 10416; -- B.R.9600 --> period= 1/9600Hz = 104166ns
constant letterNUM : integer:=9;
constant value : std_logic_vector((letterNUM*8)-1 downto 0) :="000010100000110101110011011101000110010101100110011000010110111001101111";
---------------------------------------------------------------0000101000001101 linefeed & carriagereturn  ( \n & \r) ( d10 & d13)

signal r_butt : std_logic;
signal r_final : std_logic;
signal r_byte : std_logic_vector(9 downto 0);

begin





moduloUART: modulo_UART generic map (clocNUM => myclocNUM) port map (clk=>clk,  i_OK=>r_butt,  i_ByteSS=>r_byte,   o_final=>r_final,  o_Uart_out=>sign);
worderUART : worder_UART generic map (numlet=>letterNUM) port map (clk=>clk,  i_go=>butt,   i_final=>r_final,   i_word=>value,   o_letter=>r_byte,  o_en=>r_butt  );


end Behavioral;
