`timescale 1ns / 100ps

module tb_reg ;

   reg clk = 1'b0 ;

   reg D = 1'b0 ;
   reg LD = 1'b0 ;

   wire Q ;

   always #40 clk = ~ clk ;

   always @(posedge clk)
      D <= $random ;

   // DUT

   REG   DUT (

      .clk ( clk ),
      .D   (   D ),
      .mem (  LD ),
      .Q   (   Q )

      ) ;


   // main stimulus
   initial begin

      #100 @(posedge clk) LD <= 1'b1 ;

   end



endmodule
