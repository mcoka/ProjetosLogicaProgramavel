# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
  set_param xicom.use_bs_reader 1
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Labtools 27-147} -limit 4294967295
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_vhdl -library xil_defaultlib T:/Logica-Programavel/Logica-Programavel/projeto1/projeto1.srcs/sources_1/new/seteSegmentos.vhd
read_xdc T:/Logica-Programavel/Logica-Programavel/projeto1/projeto1.srcs/constrs_1/imports/Projetos/SevenSegmentos.xdc
set_property used_in_implementation false [get_files T:/Logica-Programavel/Logica-Programavel/projeto1/projeto1.srcs/constrs_1/imports/Projetos/SevenSegmentos.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir T:/Logica-Programavel/Logica-Programavel/projeto1/projeto1.cache/wt [current_project]
set_property parent.project_dir T:/Logica-Programavel/Logica-Programavel/projeto1 [current_project]
synth_design -top SS_controller -part xc7a100tcsg324-1
write_checkpoint SS_controller.dcp
report_utilization -file SS_controller_utilization_synth.rpt -pb SS_controller_utilization_synth.pb
