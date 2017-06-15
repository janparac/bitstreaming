`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2017 05:04:49 PM
// Design Name: 
// Module Name: mytest
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

module tb_uart ;

   reg clk = 1'b0;
   reg testbutt=1'b0;

   wire testout;

   always #5 clk = ~ clk ;

   TOP_uart_TX UUT (

      .clk(clk),
      .butt(testbutt),
    .sign(testout)

    );
    
   initial begin

      #1000 testbutt <= 1'b1 ;
      //#1000 testbutt <= 1'b0 ;  /////BOUNCING
      //#1000 testbutt <= 1'b1 ; 
      //#100000 testbutt <= 1'b0;
      //#150000 testbutt <= 1'b1;
      //#1500000 testbutt<=1'b0;
      #6000000 testbutt<=1'b0;
       #3000000 testbutt<=1'b1;
       #1000 testbutt <= 1'b0 ;
       #1000 testbutt <= 1'b1 ;
       #5000000 testbutt <= 1'b0 ;
       #1000000 testbutt <= 1'b1 ;  /////BOUNCING
        
      
      

      #5000000 testbutt<=1'b0;
      
      #5000000 testbutt<=1'b1;

   end


endmodule
