
-- Blink: simple VHDL LED-blinking code


entity Blink is

   port (
   
      SW  : in  bit ;
      LED : out bit
   
   ) ;


end entity Blink ;


architecture RTL of Blink is

begin

   LED <= SW ;

end architecture RTL ;