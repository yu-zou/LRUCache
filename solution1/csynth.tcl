############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LRUCache
set_top PLRUCache
add_files LRUCache/src/cache.h
add_files LRUCache/src/cache.cpp
add_files -tb LRUCache/src/cache_tb.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7k325tffg900-2}
create_clock -period 5 -name default
config_rtl -auto_prefix=0 -encoding onehot -reset control -reset_async -reset_level high -verbose=0 -vivado_impl_strategy default -vivado_phys_opt place -vivado_synth_design_args {-directive sdx_optimization_effort_high} -vivado_synth_strategy default
#source "./LRUCache/solution1/directives.tcl"
csynth_design
