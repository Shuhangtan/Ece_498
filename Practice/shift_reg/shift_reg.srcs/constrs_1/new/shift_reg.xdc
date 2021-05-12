# Voltage constraints
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]
set_property CONFIG_MODE BPI16 [current_design]

# Clock
set_property PACKAGE_PIN AK34 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports clk]
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]

# Reset
set_property PACKAGE_PIN AV30 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports reset]

# Output
set_property PACKAGE_PIN AM39 [get_ports {Q_out[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Q_out[0]}]
set_property PACKAGE_PIN AN39 [get_ports {Q_out[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Q_out[1]}]
set_property PACKAGE_PIN AR37 [get_ports {Q_out[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Q_out[2]}]
set_property PACKAGE_PIN AT37 [get_ports {Q_out[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {Q_out[3]}]

#set_input_delay -clock [get_clocks clk] -min -add_delay 0.100 [get_ports reset]
#set_input_delay -clock [get_clocks clk] -max -add_delay 0.600 [get_ports reset]
#set_output_delay -clock [get_clocks clk] -min -add_delay 0.400 [get_ports {Q_out[*]}]
#set_output_delay -clock [get_clocks clk] -max -add_delay 0.200 [get_ports {Q_out[*]}]
