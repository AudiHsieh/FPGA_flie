############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cordic_fp32
add_files cordic_fp32/cordic.cpp
add_files cordic_fp32/cordic.h
add_files -tb cordic_fp32/tb.cpp
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./cordic_fp32/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
