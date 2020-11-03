set projDir "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/vivado"
set projName "16 Bit ALU"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/verilog/au_top_0.v" "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/verilog/reset_conditioner_1.v" "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/verilog/manual_alu_tester_2.v" "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/verilog/button_conditioner_3.v" "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/verilog/edge_detector_4.v" "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/verilog/alu_16_bit_5.v" "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/verilog/pipeline_6.v" "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/verilog/alu_arithmetic_7.v" "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/verilog/alu_boolean_8.v" "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/verilog/alu_compare_9.v" "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/verilog/alu_shifter_10.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/constraint/alchitry.xdc" "C:/Users/amris/Downloads/alchitry-labs-1.2.1/library/components/au.xdc" "C:/Users/amris/Documents/GitHub/com_struct/16\ Bit\ ALU/work/constraint/io.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
