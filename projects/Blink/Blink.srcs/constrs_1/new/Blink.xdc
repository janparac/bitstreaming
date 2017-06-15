
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {clk}] ; #IO_L12P_T1_MRCC_35 Sch=gclk[100]

#create_clock -period 10.000 -name clk -waveform {0.000 5.000} -add [get_ports clk]

set_property SEVERITY {Warning} [get_drc_checks NSTD-1];

set_property -dict { PACKAGE_PIN A8   IOSTANDARD LVCMOS33 } [get_ports {res}];

set_property -dict { PACKAGE_PIN H5  IOSTANDARD LVCMOS33 } [get_ports { led[0] }]   ; #IO_L24N_T3_35 Sch=led[4]
set_property -dict { PACKAGE_PIN J5  IOSTANDARD LVCMOS33 } [get_ports { led[1] }]   ; #IO_25_35 Sch=led[5]
set_property -dict { PACKAGE_PIN T9  IOSTANDARD LVCMOS33 } [get_ports { led[2] }]   ; #IO_L24P_T3_A01_D17_14 Sch=led[6]
set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports { led[3] }]   ; #IO_L24N_T3_A00_D16_14 Sch=led[7]