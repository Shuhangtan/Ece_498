# Adapted from the master constraint I found on github

# SYSCLK 200MHz- let's see if this works
create_clock -add -name sys_clk_pin -period 5.00 -waveform {0 2.5} [get_ports SYSCLK_P]

# DIP Switches - use them as inputs for now
set_property PACKAGE_PIN AV30 [get_ports {A_in[0]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {A_in[0]}]
set_property PACKAGE_PIN AY33 [get_ports {A_in[1]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {A_in[1]}]
set_property PACKAGE_PIN BA31 [get_ports {A_in[2]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {A_in[2]}]
set_property PACKAGE_PIN BA32 [get_ports {A_in[3]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {A_in[3]}]
set_property PACKAGE_PIN AW30 [get_ports {B_in[0]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {B_in[0]}]
set_property PACKAGE_PIN AY30 [get_ports {B_in[1]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {B_in[1]}]
set_property PACKAGE_PIN BA30 [get_ports {B_in[2]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {B_in[2]}]
set_property PACKAGE_PIN BB31 [get_ports {B_in[3]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {B_in[3]}]
    
# Some LEDs - use as outputs
set_property PACKAGE_PIN AM39 [get_ports {S_out[0]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {S_out[0]}]
set_property PACKAGE_PIN AN39 [get_ports {S_out[1]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {S_out[1]}]
set_property PACKAGE_PIN AR37 [get_ports {S_out[2]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {S_out[2]}]
set_property PACKAGE_PIN AT37 [get_ports {S_out[3]}]
    set_property IOSTANDARD LVCMOS18 [get_ports {S_out[3]}]
set_property PACKAGE_PIN AR35 [get_ports {C_out}]
    set_property IOSTANDARD LVCMOS18 [get_ports {C_out}]