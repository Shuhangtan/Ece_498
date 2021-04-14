set_property target_constrs_file /home/shuhangtan/Ece_498/Practice/binary_adder/binary_adder.srcs/constrs_1/new/4bit_adder.xdc [current_fileset -constrset]

reset_run synth_1

launch_runs synth_1 -jobs 12

launch_runs impl_1 -jobs 12

file mkdir /home/shuhangtan/Ece_498/Practice/binary_adder/binary_adder.srcs/constrs_1

add_files -fileset constrs_1 /home/shuhangtan/Ece_498/Practice/binary_adder/binary_adder.srcs/constrs_1/new/4bit_adder.xdc