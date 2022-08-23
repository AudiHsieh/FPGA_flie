############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Prefix
set_top histogram
add_files histogram_parallel.h
add_files histogram_parallel.cpp
add_files -tb tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./Prefix/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog