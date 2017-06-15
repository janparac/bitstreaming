

###si esegue da Tcl gui con:
### source /pathfromhome/myscript.SIM.tcl




#close_sim
#launch_sim

##ciao
#add_files -fileset sim_1 -norecurse /home/stefano/Desktop/paracca/Vivado_Intro/2015_2_r1/Labs/Lab4/Arty/VHDL/rtl_coding/prova_behav_nuova.wcfg
#set_property xsim.view {/home/stefano/Desktop/paracca/Vivado_Intro/2015_2_r1/Labs/Lab4/Arty/VHDL/rtl_coding/prova_behav.wcfg /home/stefano/Desktop/paracca/Vivado_Intro/2015_2_r1/Labs/Lab4/Arty/VHDL/rtl_coding/prova_behav_nuova.wcfg} [get_filesets sim_1]


#set_property xsim.view {/home/stefano/Desktop/paracca/Vivado_Intro/2015_2_r1/Labs/Lab4/Arty/VHDL/rtl_coding/prova_behav.wcfg /home/stefano/Desktop/paracca/Vivado_Intro/2015_2_r1/Labs/Lab4/Arty/VHDL/rtl_coding/prova_behav_nuova.wcfg} [get_filesets sim_1]
restart
add_force {/TOP_uart_TX/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
add_force {/TOP_uart_TX/butt} -radix hex {1 50000ns}
run 3ms
