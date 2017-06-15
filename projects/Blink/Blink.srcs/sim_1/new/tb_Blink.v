`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2017 09:50:11 AM
// Design Name: 
// Module Name: tb_Blink
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 100ps

module tb_Blink ;

   reg clk = 1'b0 ;
   reg res = 1'b0 ;
   
   
   wire LED ;


   always #5 clk = ~ clk ;

   // DUT

   Blink   DUT (

      .clk ( clk ),
      .res   (  res ),
      .LED (  LED )

      ) ;


   // main stimulus
   initial begin

      #95  res <= 1'b1 ;
      #95  res <= 1'b0 ;
      #24 res <= 1'b1;
      #100 res <= 1'b0 ;

   end



endmodule

