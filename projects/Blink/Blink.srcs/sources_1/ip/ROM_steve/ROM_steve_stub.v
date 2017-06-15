// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue Jun 13 17:22:39 2017
// Host        : N552VW running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/stefano/FPGA_VIVADO/bitstreaming/projects/Blink/Blink.srcs/sources_1/ip/ROM_steve/ROM_steve_stub.v
// Design      : ROM_steve
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2017.1" *)
module ROM_steve(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[3:0],spo[3:0]" */;
  input [3:0]a;
  output [3:0]spo;
endmodule
