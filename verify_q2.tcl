set rootp "/home/UFAD/md.sami/cad_hwsec_course/hw1/jaspergold/Q3"
set bug_net_path $rootp/buggyAES_Netlist
set library_path $rootp/designLibrary/GSCLib_3.0
set prop_loc $rootp/properties

analyze +define+functional=1 -v2k $bug_net_path/aes_128_netlist.v 
analyze +define+functional=1 -v2k $library_path/GSCLib_3.0.v 
analyze -sva $prop_loc/prop_aes.sva $prop_loc/bindings.sva

elaborate -top aes_128

clock clk
reset -none

get_design_info

set_max_trace_length 10
prove -all

set_max_trace_length 50
set_prove_per_property_time_limit 30s
set_engine_mode {K I N} 
prove -all

report 

