############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cordic_fp32
add_files cordic.cpp
add_files cordic.h
add_files -tb tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
#source "./cordic_fp32/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
