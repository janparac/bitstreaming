library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
-- Blink: simple VHDL LED-blinking code


entity Blink is

   port (
   
        clk : in std_logic;
      res  : in  std_logic ;
      led : out std_logic_vector(3 downto 0)
      --PWM_ex : out std_logic
   
   ) ;


end Blink ;


architecture RTL of Blink is

component ROM_steve IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END component;

component c_counter_binary_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
  
end component;



signal cnt : std_logic_vector(31 downto 0):=(others=>'0');
signal pilot: std_logic_vector (3 downto 0);

begin


mycounter : c_counter_binary_0 port map (CLK=>clk,SCLR=>res,Q=>cnt);
myrom : ROM_steve port map (a=>pilot, spo =>LED);

pilot <= cnt(30 downto 27);






end RTL ;