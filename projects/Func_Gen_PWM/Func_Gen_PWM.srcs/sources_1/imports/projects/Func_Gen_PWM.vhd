

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all; -- for + sign
use ieee.numeric_std.all;--for type conversion


entity Func_Gen_PWM is

 Port (    i_clk : in STD_LOGIC;
          -- i_res : in STD_LOGIC;
           i_btn_freq : in STD_LOGIC_VECTOR (2 downto 0 );
           i_btn_shape : in STD_LOGIC;
           --o_test : out STD_LOGIC;     
           o_sig : out STD_LOGIC);

end Func_Gen_PWM;

architecture Behavioral of Func_Gen_PWM is

component Sine_Gen is

 generic ( g_resol :  integer := 100 --must be equal to g_max of the PWM_gen because this is the number of different value of the ROM
            );

 Port (    i_clk : in STD_LOGIC;
           i_T : in std_logic_vector(17 downto 0);
           i_res : in STD_LOGIC;     
           o_sig : out STD_LOGIC);

end component;

component Triangle_Gen is

 generic ( g_resol :  integer := 100 --must be equal to g_max of the PWM_gen because this is the number of different value of the TRIANGLE
            );

 Port (    i_clk : in STD_LOGIC;
           i_T : in std_logic_vector(17 downto 0);
           i_res : in STD_LOGIC;     
           o_sig : out STD_LOGIC);

end component;


component MUX_freq is
generic (g_length: integer := 18); -- 2^18= 262144 quindi gia una frequenza molto bassa
port ( i_muxin : in std_logic_vector ((g_length*4) downto 1);
       i_clk : in std_logic;
       i_muxsel : in std_logic_vector (2 downto 0);
       --i_resval : in std_logic; --trivial value, must be set 1 in the top level
       --o_res : out std_logic;
       o_muxoutEres: out std_logic_vector (g_length downto 0)
);
end component;

signal s_muxout : std_logic_vector(18 downto 0);

signal f1 : std_logic_vector(17 downto 0):=std_logic_vector(to_unsigned(50000,18));
signal f2 : std_logic_vector(17 downto 0):=std_logic_vector(to_unsigned(25000,18));
signal f3 : std_logic_vector(17 downto 0):=std_logic_vector(to_unsigned(12500,18));
signal f4 : std_logic_vector(17 downto 0):=std_logic_vector(to_unsigned(6250,18));

signal tot : std_logic_vector ((18*4) downto 1);


signal s_sig_Tri, s_sig_Sin : STD_LOGIC; 

begin

tot<=f1&f2&f3&f4;

mymux : Mux_freq generic map (g_length=>18) port map (i_muxin=>tot ,  i_clk=>i_clk ,  i_muxsel=>i_btn_freq,   o_muxoutEres=>s_muxout);



process (i_clk) begin
   if rising_edge(i_clk) then
     if (i_btn_shape = '1') then
        o_sig<=s_sig_Tri;
        else
        o_sig<=s_sig_Sin;
      end if;
   end if;
end process;


triangle1 : Triangle_Gen generic map (g_resol=>100) port map (i_clk=>i_clk,  i_T=>s_muxout(17 downto 0),  i_res=>s_muxout(18),  o_sig=>s_sig_Tri);

sine1 : Sine_Gen generic map (g_resol=>100) port map (i_clk=>i_clk,  i_T=>s_muxout(17 downto 0),  i_res=>s_muxout(18),  o_sig=>s_sig_Sin);

--o_test<= i_clk;

end Behavioral;


--case INT_A is
--  when 0      =>  Z <= A;
--  when 1 to 3 =>  Z <= B;
--  when 4|6|8  =>  Z <= C;
--  when others =>  Z <= 'X';
--end case;

--process (i_clk,i_btn_freq) begin
--   if rising_edge(i_clk) then
--      case i_btn_freq is
--        when "000" => s_T <=std_logic_vector(to_unsigned(50000,32));
--                      s_res <= '0';
--        when "001" => s_T <=std_logic_vector(to_unsigned(25000,32));
--                       s_res <= '0';
--        when "011" => s_T <=std_logic_vector(to_unsigned(12500,32));
--                       s_res <= '0';
--        when "111" => s_T <=std_logic_vector(to_unsigned(6250,32));
--                       s_res <= '0';
--        when "101" => s_T <=std_logic_vector(to_unsigned(5,32)); --special code: the (almost) faster frequency
--                      s_res <= '0';  
--        when "010" => s_T <=std_logic_vector(to_unsigned(5,32)); --special code: the (almost) faster frequency
--                         s_res <= '0';  
--         when "100" => s_T <=std_logic_vector(to_unsigned(5,32)); --special code: the (almost) faster frequency
--                        s_res <= '0';  
--        when "110" => s_T <=std_logic_vector(to_unsigned(5,32)); --special code: the (almost) faster frequency
--                         s_res <= '0';                  
--        when others => s_T <=std_logic_vector(to_unsigned(49999,32));
--                        s_res <= '1';
--      end case;

--   end if;
--end process;
