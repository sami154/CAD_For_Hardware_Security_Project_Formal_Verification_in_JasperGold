set rootp "/home/UFAD/md.sami/cad_hwsec_course/hw1/jaspergold/Q3"
set code_loc $rootp/goldedAES_RTL
set property_loc $rootp/properties

analyze -verilog $code_loc/round.v $code_loc/table.v $code_loc/aes_128.v
analyze -sva $property_loc/prop_aes.sva $property_loc/bindings.sva
  

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

