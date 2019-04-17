# This script segment is generated automatically by AutoPilot

set id 42
set name PLRUCache_mux_83_24_2_1
set corename simcore_mux
set op mux
set stage_num 2
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set din0_width 24
set din0_signed 0
set din1_width 24
set din1_signed 0
set din2_width 24
set din2_signed 0
set din3_width 24
set din3_signed 0
set din4_width 24
set din4_signed 0
set din5_width 24
set din5_signed 0
set din6_width 24
set din6_signed 0
set din7_width 24
set din7_signed 0
set din8_width 3
set din8_signed 0
set ce_width 1
set ce_signed 0
set dout_width 24
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


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
    id 57 \
    name validArray_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename validArray_V_4 \
    op interface \
    ports { validArray_V_4_address0 { O 8 vector } validArray_V_4_ce0 { O 1 bit } validArray_V_4_we0 { O 1 bit } validArray_V_4_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'validArray_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
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
    id 59 \
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
    id 60 \
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
    id 61 \
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
    id 62 \
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
    id 63 \
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
    id 64 \
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
    id 65 \
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
    id 66 \
    name dataArray_0_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_0_V \
    op interface \
    ports { dataArray_0_V_address0 { O 8 vector } dataArray_0_V_ce0 { O 1 bit } dataArray_0_V_we0 { O 1 bit } dataArray_0_V_d0 { O 512 vector } dataArray_0_V_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name dataArray_1_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_1_V \
    op interface \
    ports { dataArray_1_V_address0 { O 8 vector } dataArray_1_V_ce0 { O 1 bit } dataArray_1_V_we0 { O 1 bit } dataArray_1_V_d0 { O 512 vector } dataArray_1_V_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name dataArray_2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_2_V \
    op interface \
    ports { dataArray_2_V_address0 { O 8 vector } dataArray_2_V_ce0 { O 1 bit } dataArray_2_V_we0 { O 1 bit } dataArray_2_V_d0 { O 512 vector } dataArray_2_V_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name dataArray_3_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_3_V \
    op interface \
    ports { dataArray_3_V_address0 { O 8 vector } dataArray_3_V_ce0 { O 1 bit } dataArray_3_V_we0 { O 1 bit } dataArray_3_V_d0 { O 512 vector } dataArray_3_V_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name dataArray_4_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_4_V \
    op interface \
    ports { dataArray_4_V_address0 { O 8 vector } dataArray_4_V_ce0 { O 1 bit } dataArray_4_V_we0 { O 1 bit } dataArray_4_V_d0 { O 512 vector } dataArray_4_V_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_4_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name dataArray_5_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_5_V \
    op interface \
    ports { dataArray_5_V_address0 { O 8 vector } dataArray_5_V_ce0 { O 1 bit } dataArray_5_V_we0 { O 1 bit } dataArray_5_V_d0 { O 512 vector } dataArray_5_V_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_5_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name dataArray_6_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_6_V \
    op interface \
    ports { dataArray_6_V_address0 { O 8 vector } dataArray_6_V_ce0 { O 1 bit } dataArray_6_V_we0 { O 1 bit } dataArray_6_V_d0 { O 512 vector } dataArray_6_V_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_6_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name dataArray_7_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dataArray_7_V \
    op interface \
    ports { dataArray_7_V_address0 { O 8 vector } dataArray_7_V_ce0 { O 1 bit } dataArray_7_V_we0 { O 1 bit } dataArray_7_V_d0 { O 512 vector } dataArray_7_V_q0 { I 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataArray_7_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 74 \
    name mruArray_V_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mruArray_V_4 \
    op interface \
    ports { mruArray_V_4_address0 { O 8 vector } mruArray_V_4_ce0 { O 1 bit } mruArray_V_4_we0 { O 1 bit } mruArray_V_4_d0 { O 8 vector } mruArray_V_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mruArray_V_4'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
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
    id 46 \
    name dram_V \
    type other \
    dir IO \
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
    id 47 \
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
    id 48 \
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
    id 49 \
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
    id 50 \
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
    id 51 \
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
    id 52 \
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
    id 53 \
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
    id 54 \
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
    id 55 \
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
    id 56 \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 512 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


