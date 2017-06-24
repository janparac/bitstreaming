set_property PACKAGE_PIN E3 [get_ports i_clk]
set_property IOSTANDARD LVCMOS33 [get_ports i_clk]

set_property -dict { PACKAGE_PIN G13  IOSTANDARD LVCMOS33 } [get_ports { o_sig }]   ; #IO_0_15 Sch=ja[1]

#set_property -dict { PACKAGE_PIN D9  IOSTANDARD LVCMOS33 } [get_ports { i_btn[0] }]   ; #IO_L6N_T0_VREF_16 Sch=btn[0]
#set_property -dict { PACKAGE_PIN C9  IOSTANDARD LVCMOS33 } [get_ports { i_btn[1] }]   ; #IO_L11P_T1_SRCC_16 Sch=btn[1]
#set_property -dict { PACKAGE_PIN B9  IOSTANDARD LVCMOS33 } [get_ports { i_btn[2] }]   ; #IO_L11N_T1_SRCC_16 Sch=btn[2]
#set_property -dict { PACKAGE_PIN B8  IOSTANDARD LVCMOS33 } [get_ports { i_btn[3] }]   ; #IO_L12P_T1_MRCC_16 Sch=btn[3]


#set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports {  o_test }]   ; #IO_L11P_T1_SRCC_15 Sch=jb_p[1]


set_property -dict { PACKAGE_PIN A8   IOSTANDARD LVCMOS33 } [get_ports {i_btn_freq[0]}  ]   ; #IO_L12N_T1_MRCC_16 Sch=sw[0]
set_property -dict { PACKAGE_PIN C11  IOSTANDARD LVCMOS33 } [get_ports { i_btn_freq[1]} ]   ; #IO_L13P_T2_MRCC_16 Sch=sw[1]
set_property -dict { PACKAGE_PIN C10  IOSTANDARD LVCMOS33 } [get_ports { i_btn_freq[2]} ]   ; #IO_L13N_T2_MRCC_16 Sch=sw[2]
set_property -dict { PACKAGE_PIN A10  IOSTANDARD LVCMOS33 } [get_ports { i_btn_shape} ]   ; #IO_L14P_T2_SRCC_16 Sch=sw[3]