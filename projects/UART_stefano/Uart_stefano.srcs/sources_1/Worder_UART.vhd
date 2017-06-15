
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Worder_UART is
    generic (numlet: integer
            );
    Port ( clk : in STD_LOGIC;
            i_go : in std_logic; --switch for the sending ( BUTTON)
           i_final: in std_logic; -- final flag sent by the underlying uart single char module
           i_word : in STD_LOGIC_VECTOR ((numlet*8)-1 downto 0); --word sent by the top module
           o_letter : out STD_LOGIC_VECTOR (9 downto 0); --char scanning to stimulate the underlying uart module
           o_en : out STD_LOGIC
           );
end Worder_UART;

architecture Behavioral of Worder_UART is

signal r_count_final : integer range 0 to 100 :=0; --counting the letter of the word  
signal r_stop : std_logic:='0'; --flag for the end of the word
signal r_help : std_logic:='0'; --used with r_stop to manage the stopping of the uart commuication

begin

process (clk) begin --process for the stimulating of the underlying uart module

if rising_edge(clk) then

      if r_stop ='1' then --idle in the word is finished
            o_letter <= (others =>'1');
            o_en <= '0';
            r_help<='1';
      elsif i_go = '1' and r_help='0' then 
            o_en<='1';
            o_letter <= '1' & i_word( (8*(numlet - r_count_final) - 1) downto (8*(numlet-1-r_count_final))) & '0'; --adding of start&stop bits
      elsif i_go='0' then  --idle if the i_go commander goes to zero
            o_letter <= (others =>'1');
            o_en <= '0';
            r_help<='0';
    end if; --rstop
end if; --clk

end process;


process (clk) begin --process for order the letter in the word
    
if rising_edge(clk)  then
        if i_go = '0' then 
            r_count_final <= 0 ;
        else 
            if i_final='1' then
                if r_count_final < numlet-1 then
                    r_count_final <= r_count_final +1;
                    else r_count_final <= 0 ;
                end if;
            end if;
        end if;
end if;

end process;



r_stop <= '1' when i_final='1' and r_count_final=numlet-1
            else '0';

end Behavioral;
