// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue Jun 13 05:19:24 2017
// Host        : N552VW running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/stefano/FPGA_VIVADO/bitstreaming/projects/Blink/Blink.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [7:0]Q;

  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZxTZQ0UsS9HXL+cye8KhDHq6JjsRKdBbt7/23hG3Xv4lTOl0WgHvvGUXhuq0kWEjqS5VCl4O7cYh
glsyN2zZsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
D0MQ3ley4npGPCDj0uKNvxx120GglLBAwtK6OmuXlvAVN0AR4gZjPv9jfdRnj/KJCxgkNVaqUWhg
Egx0h1ObNRySsfchKqdWJxVp84ELTdz8SOdcwsqw3WYcma/EKO0xmVG+Dj5kh3SGzvvfDaBktFb4
bK3AFZY/+Kz6WaLMycE=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Ib/FxVN0ZG+ayfRlBompcRYBpl17xB6BG0jS3s3PNdG6pBxEZq6Py/W4j+7qAMV4uf9WBeBuwU2q
HYo5rMUEYE6wZf9jBnW23+A53JEyx5cXbckxSK688vZaeemF9wCkbeVwfHM8QNbLc51/qzlRZboH
l7C4B2YP6+l44fhzNYY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ws6JMsAbE3g94lwYREcMoC/8x4NmofYlfb9uHUEoOTvERSt6NSyR1yiG91nsEU3XfNhOQ7b/Wo+P
aa5UrHOplosBwW9O/BOPM9kStFRQfGsf8m20FxpwLUQdlNgNMPZvmEcAaEc+pN3iwPyX09CoU7cW
ox6RnElk1MI4OWVFf77mW8j6e1VlWO+Vc8LKoTynKGAP5hC4BYHQd27IInXzGdz1oVD4Bam4x0/H
sYLHZCISnOa94Q3CL6ay9xgNR41rtS98WTAttjEyFf8ILmaeESW6M4dGV3+EcdfBNzrTTc1nF75N
HxzYnCBLVG6X9yHlNRAwFRouHTyObDyWadNJzQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jKxqwTVbU6wQlQsyUl5EyNEaloyZKqOqnKP/oSoo8BbsW9jgw2GEmYOdPZbHNARjlp9P52Yzd3cJ
LczzuDU2cV2yn10WPFG38hLnucATA1ff0e8/mPzfxBEbAOPlzTkUFRukOc0zmo/tLK6cZvcaoRPu
DUI30FqzbS3M/o8XdN6yN2QOFivgXW0Xh8ycmXVtjktsm6ElnG31EW/2LkwLAyVftpL7G7j6nMnt
e+d+eKFIoGrxVI+7fida/LT0yaOYHWQh3rAG4GvE+2lORv2wy78727ZIirWNnQu8oy5qQcf7LAqd
e4MLtleFAxEV9eZP09SJZUSUNMj8waYaAU3w8A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
w06/xQMdplxMd/DX9rImvuDEyUujJNZ5bclIgCUEQ3II7s7VZNfFQwqshU6852btDf1ThZcwb360
Io2jAnYs7UKM/nRMb56sYLBX4Y1+ufAYkpkHIcZcRICnnnvtYZ47grVBHrUfGA/xC7v/201YnNS0
c/L8l8Caa3RS8dR3ZckJnLnQOdimwEUdrhOFCxXNaVvcB1qFzyeB0qRxY/SqYktIcK0cf245rT6J
ycbkjnMIhAqvfqKdgoqIvgkkVe5grJuoukmw5uvFNcNJJ4EbH5xxoUZnl8pXhFueD3O6JeklVONo
/UZlkoZ7Ymk1otUl6y3wzaGnG8SCVGGtrmKfXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
MCJi34wvHkmIYY5R2mrntwWRMVq9/NAzTnVLHDISL+o66yeiI9e4l+QOJs1NSMdF6zU8FQNZvQ0c
mUPY0E86nLdUlgvKn1nUzL6nA7wnu5901RVLCI8ol4im9aHMb2M00jp03JgVKL9Ng/N+yFS9ZEgt
1bxZ6thzPbZiB89OJ9kkpRLVftgusEUD0iQabsCcmCrf0IuP03jRNVj17RJLG4cpBCHDkYO/DPfe
4QTH/HRUkLZdZ2g4I6WMq8AEEjFkQrsCOasOmbxxk5hdx2oFhBzO8QKmdv54DG9lOXNGilZ8iKJm
elow1K2Tklnf3O/iyuo71P4R+Gg9jI/BgJUAfw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
nz4vL2XKAg/+/vIBdfkzwWjfPA1MZztNnKiC7vyGXDE/Un0XyAXqlAK98kMPVKkyHNTgSVScWw4y
eScwmpzmBrKQbnV/SjmowXU4v6MYMrMukk8x1Bc713FGg2ZkoBbu9Cbk0LHMB8oGhkDDvnysR3Pl
B3WTNSXRY49q/GxYtQTgrEoYBXG0tOIMatRW5BcigPhXTil16cexqp8+avB1RYILUt9+a38j3MtF
v9+QHu8QLRItMgw6dCiFCCejoNToesQDrKoCjJIwtRy8W1+yt6AFddOfTdQEVq8thYNLRHgxRgBw
UagqC28+8+7ZnUQjnBTFRjm23kyTgVjvYcB7hw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6816)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
