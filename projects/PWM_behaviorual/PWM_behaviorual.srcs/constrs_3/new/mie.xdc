set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property PACKAGE_PIN G13 [get_ports {led[0]}]
set_property PACKAGE_PIN b11 [get_ports {led[1]}]
set_property PACKAGE_PIN a11 [get_ports {led[2]}]
set_property PACKAGE_PIN d12 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE ;
set_property SEVERITY {Warning} [get_drc_checks LUTLP-1]; 