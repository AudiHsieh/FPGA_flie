############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cordic_task_pipeline
set_top cordic
add_files cordic_task_pipeline/cordic.h
add_files cordic_task_pipeline/cordic.cpp
add_files -tb cordic_task_pipeline/tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
#source "./cordic_task_pipeline/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
