# Clock
set_property PACKAGE_PIN AK34 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports clk]
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]

# Input: f_in
set_property PACKAGE_PIN AV30 [get_ports {f_in}]
    set_property IOSTANDARD LVCMOS18 [get_ports {f_in}]
    
# Input: A_in 


# Input: B_in


# Output: S_out
