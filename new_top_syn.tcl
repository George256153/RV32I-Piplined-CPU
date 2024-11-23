##############################################

#	Read in top module

##############################################
read_file -format verilog {./Top.v}
current_design Top
link

##############################################

#	Set the clock rate

##############################################

create_clock -name "clk" -period 14 -waveform { 7 14 }  { clk  }
set_dont_touch_network  [ find clock clk ]
set_fix_hold  [ find clock clk]

##############################################

#       Set Design Environment 

##############################################

set_operating_condition -max slow -max_library slow\
                        -min fast -min_library fast
                        
set_wire_load_model -name tsmc18_wl10 -library slow
set_max_area 3000
set_clock_latency 2 clk
set_clock_uncertainty -setup 0.1 clk
set_drive 0.001339 [all_inputs]
set_load 0.001339 [all_outputs]
set_input_delay -clock clk -max 0.4 [all_inputs] 

set_output_delay -clock clk -max 0.4 [all_outputs]


set_fix_multiple_port_nets -all -buffer_constants

##############################################

#       Synthesize circuit

##############################################

compile -exact_map 
#compile -exact_map -map_effort high -area_effort high -power_effort high

change_names -rule verilog -verbose -hierarchy

##############################################

#       Create Report

##############################################

report_timing -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group > timing_max_rpt.txt
report_timing -path full -delay min -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group > timing_min_rpt.txt
report_area -nosplit > area_rpt.txt
report_power -analysis_effort low > power_rpt.txt


##############################################

#       Save syntheized file

##############################################

write -hierarchy -format verilog -output Top_syn.v
write_sdf -version 1.0 -context verilog Top_syn.sdf
write_sdc -version 1.5 Top_syn.sdc
write_script > Top_syn.dc


#exit
