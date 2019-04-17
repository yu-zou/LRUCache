# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name dataArray_0_V \
    reset_level 1 \
    sync_rst false \
    dir O \
    corename dataArray_0_V \
    op interface \
    ports { dataArray_0_V_address0 { O 8 vector } dataArray_0_V_ce0 { O 1 bit } dataArray_0_V_we0 { O 1 bit } dataArray_0_V_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name dataArray_1_V \
    reset_level 1 \
    sync_rst false \
    dir O \
    corename dataArray_1_V \
    op interface \
    ports { dataArray_1_V_address0 { O 8 vector } dataArray_1_V_ce0 { O 1 bit } dataArray_1_V_we0 { O 1 bit } dataArray_1_V_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 35 \
    name dataArray_2_V \
    reset_level 1 \
    sync_rst false \
    dir O \
    corename dataArray_2_V \
    op interface \
    ports { dataArray_2_V_address0 { O 8 vector } dataArray_2_V_ce0 { O 1 bit } dataArray_2_V_we0 { O 1 bit } dataArray_2_V_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 36 \
    name dataArray_3_V \
    reset_level 1 \
    sync_rst false \
    dir O \
    corename dataArray_3_V \
    op interface \
    ports { dataArray_3_V_address0 { O 8 vector } dataArray_3_V_ce0 { O 1 bit } dataArray_3_V_we0 { O 1 bit } dataArray_3_V_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name dataArray_4_V \
    reset_level 1 \
    sync_rst false \
    dir O \
    corename dataArray_4_V \
    op interface \
    ports { dataArray_4_V_address0 { O 8 vector } dataArray_4_V_ce0 { O 1 bit } dataArray_4_V_we0 { O 1 bit } dataArray_4_V_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_4_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name dataArray_5_V \
    reset_level 1 \
    sync_rst false \
    dir O \
    corename dataArray_5_V \
    op interface \
    ports { dataArray_5_V_address0 { O 8 vector } dataArray_5_V_ce0 { O 1 bit } dataArray_5_V_we0 { O 1 bit } dataArray_5_V_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_5_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name dataArray_6_V \
    reset_level 1 \
    sync_rst false \
    dir O \
    corename dataArray_6_V \
    op interface \
    ports { dataArray_6_V_address0 { O 8 vector } dataArray_6_V_ce0 { O 1 bit } dataArray_6_V_we0 { O 1 bit } dataArray_6_V_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_6_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name dataArray_7_V \
    reset_level 1 \
    sync_rst false \
    dir O \
    corename dataArray_7_V \
    op interface \
    ports { dataArray_7_V_address0 { O 8 vector } dataArray_7_V_ce0 { O 1 bit } dataArray_7_V_we0 { O 1 bit } dataArray_7_V_d0 { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_7_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name mruArray_V_2 \
    reset_level 1 \
    sync_rst false \
    dir IO \
    corename mruArray_V_2 \
    op interface \
    ports { mruArray_V_2_address0 { O 8 vector } mruArray_V_2_ce0 { O 1 bit } mruArray_V_2_we0 { O 1 bit } mruArray_V_2_d0 { O 8 vector } mruArray_V_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mruArray_V_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name i_addr_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_i_addr_V \
    op interface \
    ports { i_addr_V { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name i_wdata_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_i_wdata_V \
    op interface \
    ports { i_wdata_V { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name valid_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_valid_V \
    op interface \
    ports { valid_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name tag_0_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_tag_0_V_read \
    op interface \
    ports { tag_0_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name tag_1_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_tag_1_V_read \
    op interface \
    ports { tag_1_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name tag_2_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_tag_2_V_read \
    op interface \
    ports { tag_2_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name tag_3_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_tag_3_V_read \
    op interface \
    ports { tag_3_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name tag_4_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_tag_4_V_read \
    op interface \
    ports { tag_4_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name tag_5_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_tag_5_V_read \
    op interface \
    ports { tag_5_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name tag_6_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_tag_6_V_read \
    op interface \
    ports { tag_6_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name tag_7_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_tag_7_V_read \
    op interface \
    ports { tag_7_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst false \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst false \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst false \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


