library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all; -- for + sign
use ieee.numeric_std.all;--for type conversion

entity MUX_freq is
generic (g_length: integer := 18); -- 2^18= 262144 quindi gia una frequenza molto bassa
port ( i_muxin : in std_logic_vector ((g_length*4) downto 1);
       i_clk : in std_logic;
       i_muxsel : in std_logic_vector (2 downto 0);
       --i_resval : in std_logic; --trivial value, must be set 1 in the top level
       --o_res : out std_logic;
       o_muxoutEres: out std_logic_vector (g_length downto 0)
);
end MUX_freq;

architecture Behavioral of MUX_freq is

begin

process (i_clk,i_muxsel) begin
  if rising_edge(i_clk) then
      case i_muxsel is
        when "000" => o_muxoutEres <= '0' & i_muxin((g_length*4) downto (g_length*4)- (g_length-1) );
        --o_res <= '0';
        when "001" => o_muxoutEres <= '0' & i_muxin((g_length*3) downto (g_length*3)-(g_length-1) );
        --o_res <= '0';
        when "011" => o_muxoutEres <= '0' & i_muxin((g_length*2) downto (g_length*2)-(g_length-1) );
        --o_res <= '0';
        when "111" => o_muxoutEres <= '0' &  i_muxin((g_length*1) downto (g_length*1)-(g_length-1) );
        --o_res <= '0';
--        when "100" => o_muxout <=e; --special code: the (almost) faster frequency
        when others => o_muxoutEres <= '1' & "000000000000000000";
        --o_res <= i_resval;

      end case;
  end if;
end process;

end Behavioral;
