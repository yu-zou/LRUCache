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
    id 90 \
    name validArray_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename validArray_V_2 \
    op interface \
    ports { validArray_V_2_address0 { O 8 vector } validArray_V_2_ce0 { O 1 bit } validArray_V_2_we0 { O 1 bit } validArray_V_2_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'validArray_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 91 \
    name tagArray_0_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tagArray_0_V \
    op interface \
    ports { tagArray_0_V_address0 { O 8 vector } tagArray_0_V_ce0 { O 1 bit } tagArray_0_V_we0 { O 1 bit } tagArray_0_V_d0 { O 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tagArray_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 92 \
    name tagArray_1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tagArray_1_V \
    op interface \
    ports { tagArray_1_V_address0 { O 8 vector } tagArray_1_V_ce0 { O 1 bit } tagArray_1_V_we0 { O 1 bit } tagArray_1_V_d0 { O 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tagArray_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 93 \
    name tagArray_2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tagArray_2_V \
    op interface \
    ports { tagArray_2_V_address0 { O 8 vector } tagArray_2_V_ce0 { O 1 bit } tagArray_2_V_we0 { O 1 bit } tagArray_2_V_d0 { O 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tagArray_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 94 \
    name tagArray_3_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tagArray_3_V \
    op interface \
    ports { tagArray_3_V_address0 { O 8 vector } tagArray_3_V_ce0 { O 1 bit } tagArray_3_V_we0 { O 1 bit } tagArray_3_V_d0 { O 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tagArray_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 95 \
    name tagArray_4_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tagArray_4_V \
    op interface \
    ports { tagArray_4_V_address0 { O 8 vector } tagArray_4_V_ce0 { O 1 bit } tagArray_4_V_we0 { O 1 bit } tagArray_4_V_d0 { O 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tagArray_4_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 96 \
    name tagArray_5_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tagArray_5_V \
    op interface \
    ports { tagArray_5_V_address0 { O 8 vector } tagArray_5_V_ce0 { O 1 bit } tagArray_5_V_we0 { O 1 bit } tagArray_5_V_d0 { O 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tagArray_5_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name tagArray_6_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tagArray_6_V \
    op interface \
    ports { tagArray_6_V_address0 { O 8 vector } tagArray_6_V_ce0 { O 1 bit } tagArray_6_V_we0 { O 1 bit } tagArray_6_V_d0 { O 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tagArray_6_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name tagArray_7_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tagArray_7_V \
    op interface \
    ports { tagArray_7_V_address0 { O 8 vector } tagArray_7_V_ce0 { O 1 bit } tagArray_7_V_we0 { O 1 bit } tagArray_7_V_d0 { O 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tagArray_7_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name mruArray_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mruArray_V \
    op interface \
    ports { mruArray_V_address0 { O 8 vector } mruArray_V_ce0 { O 1 bit } mruArray_V_we0 { O 1 bit } mruArray_V_d0 { O 8 vector } mruArray_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mruArray_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name dataArray_V_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_V_0 \
    op interface \
    ports { dataArray_V_0_address0 { O 8 vector } dataArray_V_0_ce0 { O 1 bit } dataArray_V_0_we0 { O 1 bit } dataArray_V_0_d0 { O 512 vector } dataArray_V_0_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 101 \
    name dataArray_V_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_V_1 \
    op interface \
    ports { dataArray_V_1_address0 { O 8 vector } dataArray_V_1_ce0 { O 1 bit } dataArray_V_1_we0 { O 1 bit } dataArray_V_1_d0 { O 512 vector } dataArray_V_1_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
    name dataArray_V_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_V_2 \
    op interface \
    ports { dataArray_V_2_address0 { O 8 vector } dataArray_V_2_ce0 { O 1 bit } dataArray_V_2_we0 { O 1 bit } dataArray_V_2_d0 { O 512 vector } dataArray_V_2_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name dataArray_V_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_V_3 \
    op interface \
    ports { dataArray_V_3_address0 { O 8 vector } dataArray_V_3_ce0 { O 1 bit } dataArray_V_3_we0 { O 1 bit } dataArray_V_3_d0 { O 512 vector } dataArray_V_3_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name dataArray_V_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_V_4 \
    op interface \
    ports { dataArray_V_4_address0 { O 8 vector } dataArray_V_4_ce0 { O 1 bit } dataArray_V_4_we0 { O 1 bit } dataArray_V_4_d0 { O 512 vector } dataArray_V_4_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 105 \
    name dataArray_V_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_V_5 \
    op interface \
    ports { dataArray_V_5_address0 { O 8 vector } dataArray_V_5_ce0 { O 1 bit } dataArray_V_5_we0 { O 1 bit } dataArray_V_5_d0 { O 512 vector } dataArray_V_5_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 106 \
    name dataArray_V_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_V_6 \
    op interface \
    ports { dataArray_V_6_address0 { O 8 vector } dataArray_V_6_ce0 { O 1 bit } dataArray_V_6_we0 { O 1 bit } dataArray_V_6_d0 { O 512 vector } dataArray_V_6_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name dataArray_V_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_V_7 \
    op interface \
    ports { dataArray_V_7_address0 { O 8 vector } dataArray_V_7_ce0 { O 1 bit } dataArray_V_7_we0 { O 1 bit } dataArray_V_7_d0 { O 512 vector } dataArray_V_7_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_V_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name i_addr_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_addr_V \
    op interface \
    ports { i_addr_V { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name i_wdata_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_wdata_V \
    op interface \
    ports { i_wdata_V { I 512 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name dram_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dram_V \
    op interface \
    ports { m_axi_dram_V_AWVALID { O 1 bit } m_axi_dram_V_AWREADY { I 1 bit } m_axi_dram_V_AWADDR { O 32 vector } m_axi_dram_V_AWID { O 1 vector } m_axi_dram_V_AWLEN { O 32 vector } m_axi_dram_V_AWSIZE { O 3 vector } m_axi_dram_V_AWBURST { O 2 vector } m_axi_dram_V_AWLOCK { O 2 vector } m_axi_dram_V_AWCACHE { O 4 vector } m_axi_dram_V_AWPROT { O 3 vector } m_axi_dram_V_AWQOS { O 4 vector } m_axi_dram_V_AWREGION { O 4 vector } m_axi_dram_V_AWUSER { O 1 vector } m_axi_dram_V_WVALID { O 1 bit } m_axi_dram_V_WREADY { I 1 bit } m_axi_dram_V_WDATA { O 512 vector } m_axi_dram_V_WSTRB { O 64 vector } m_axi_dram_V_WLAST { O 1 bit } m_axi_dram_V_WID { O 1 vector } m_axi_dram_V_WUSER { O 1 vector } m_axi_dram_V_ARVALID { O 1 bit } m_axi_dram_V_ARREADY { I 1 bit } m_axi_dram_V_ARADDR { O 32 vector } m_axi_dram_V_ARID { O 1 vector } m_axi_dram_V_ARLEN { O 32 vector } m_axi_dram_V_ARSIZE { O 3 vector } m_axi_dram_V_ARBURST { O 2 vector } m_axi_dram_V_ARLOCK { O 2 vector } m_axi_dram_V_ARCACHE { O 4 vector } m_axi_dram_V_ARPROT { O 3 vector } m_axi_dram_V_ARQOS { O 4 vector } m_axi_dram_V_ARREGION { O 4 vector } m_axi_dram_V_ARUSER { O 1 vector } m_axi_dram_V_RVALID { I 1 bit } m_axi_dram_V_RREADY { O 1 bit } m_axi_dram_V_RDATA { I 512 vector } m_axi_dram_V_RLAST { I 1 bit } m_axi_dram_V_RID { I 1 vector } m_axi_dram_V_RUSER { I 1 vector } m_axi_dram_V_RRESP { I 2 vector } m_axi_dram_V_BVALID { I 1 bit } m_axi_dram_V_BREADY { O 1 bit } m_axi_dram_V_BRESP { I 2 vector } m_axi_dram_V_BID { I 1 vector } m_axi_dram_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name dram_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dram_V_offset \
    op interface \
    ports { dram_V_offset { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name valid_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_valid_V \
    op interface \
    ports { valid_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name tag_0_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tag_0_V_read \
    op interface \
    ports { tag_0_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name tag_1_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tag_1_V_read \
    op interface \
    ports { tag_1_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name tag_2_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tag_2_V_read \
    op interface \
    ports { tag_2_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name tag_3_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tag_3_V_read \
    op interface \
    ports { tag_3_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name tag_4_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tag_4_V_read \
    op interface \
    ports { tag_4_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name tag_5_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tag_5_V_read \
    op interface \
    ports { tag_5_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name tag_6_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tag_6_V_read \
    op interface \
    ports { tag_6_V_read { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name tag_7_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
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
    sync_rst true \
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
    sync_rst true \
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
    sync_rst true \
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


