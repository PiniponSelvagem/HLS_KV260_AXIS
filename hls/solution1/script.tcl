############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project hls
set_top axis
add_files hls/solution1/src/axis.cpp
add_files -tb hls/solution1/src/tb_axis.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
config_cosim -tool xsim -trace_level all
source "./hls/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog
