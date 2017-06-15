

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;


entity count_deb is
    Port ( i_clk : in STD_LOGIC;
            i_en : in STD_LOGIC;
          
           o_res : out STD_LOGIC_VECTOR(3 downto 0));
end count_deb;

architecture Behavioral of count_deb is

signal s_count : std_logic_vector (3 downto 0) := (others=>'0');
signal s_count_deb : integer;

signal s_start: std_logic:='0';
signal s_en : std_logic:='0';

begin

process (i_clk) begin
if (rising_edge(i_clk)) then
    if ( i_en='1' or s_start='1' )then
        if s_count_deb = 100000000 then
            s_count_deb<=0;
            s_start<='0';
        else s_count_deb<=s_count_deb +1; 
            s_start<='1';
        end if;
    else s_count_deb <=0;
    end if;
end if;--clk
end process;



s_en <= s_start;


--counter
process (s_en) begin

    if (rising_edge(s_en)) then
        s_count<=s_count + 1;
    end if;
end process;

o_res<=s_count;

end Behavioral;
