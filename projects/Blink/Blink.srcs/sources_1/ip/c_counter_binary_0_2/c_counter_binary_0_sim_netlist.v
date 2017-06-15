// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue Jun 13 16:47:24 2017
// Host        : N552VW running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/stefano/FPGA_VIVADO/bitstreaming/projects/Blink/Blink.srcs/sources_1/ip/c_counter_binary_0_2/c_counter_binary_0_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
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
  (* C_WIDTH = "32" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "32" *) 
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
  input [31:0]L;
  output THRESH0;
  output [31:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [31:0]Q;
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
  (* C_WIDTH = "32" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
LZWA2apUSs/KBy0SRJKOCpviq0Ie2BfLFHKF5l/J1Y4Q9kGjnco6SsSa0PMCGBlB3ZPLtQADzapJ
W0tjbNK2hnZlBr0gpopBxVzdHTuhSnKKkp5/iJd9fYHyde8TgvMmVP2ARHX7bnlFzrLHiYbNk5nt
KC1pFEyi4hYlBCJXGrVjsOjBPPwkzCo9F5d95hSpsbGNr02xEAyhj6nBUViZoeTPlDCWOt/ScT8O
CTmRbVM68pXvyV5uIU12F8cvslxqwZu5Ai6AEGy94dqXGnAFiV0ek31NzMnnnvsx7v7XpktBZkyr
Vgupkqo+F/Vx4+GccxkwD8LxIOI99br2XF2+Jg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
IiTBXtwSvXAgRMolyeUx47Eozum2yHEdYYMyjW1SuVQlRhip6xZsS07cqNuOGTt/X/150Bjnq86Z
ZyzCjTlgD9OCUgM/x/6XspWH1hjwV8C5QeMnkfKfmf9MxTU20PWByke7AG8xEb9OKSRd6fuyGK5Q
OJ4RR8U2wbTcaKPE34QLQLV1yVfzxK5SeNc/Kw+B0Gwi1XY/5okYvjcdo2i47z2JaSXYWVCOPPu+
EEWuNaGx3LJBOLywYSFCb7dL0lB4KQn8BGhQCIh5pw933nsZWGuzy+3Lt6kZRK3S8a+zaSVrFNZG
6IL89ApWLKWVmNCG48SrCAaqNCctgB7NXXUfuQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17552)
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
