# ==============================================================
# File generated on Wed Apr 17 12:02:50 EDT 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../src/cache_tb.cpp -cflags { -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas}
add_files LRUCache/src/cache.cpp
add_files LRUCache/src/cache.h
set_part xc7k325tffg900-2
create_clock -name default -period 5
config_rtl -auto_prefix=0
config_rtl -encoding=onehot
config_rtl -reset=control
config_rtl -reset_async=1
config_rtl -reset_level=high
config_rtl -verbose=0
config_rtl -vivado_impl_strategy=default
config_rtl -vivado_phys_opt=place
config_rtl -vivado_synth_design_args {-directive sdx_optimization_effort_high}
config_rtl -vivado_synth_strategy=default
config_export -vivado_impl_strategy=default
config_export -vivado_phys_opt=place
config_export -vivado_synth_design_args {-directive sdx_optimization_effort_high}
config_export -vivado_synth_strategy=default
