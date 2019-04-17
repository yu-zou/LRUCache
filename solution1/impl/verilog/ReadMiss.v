// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ReadMiss (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        i_addr_V,
        m_axi_dram_V_AWVALID,
        m_axi_dram_V_AWREADY,
        m_axi_dram_V_AWADDR,
        m_axi_dram_V_AWID,
        m_axi_dram_V_AWLEN,
        m_axi_dram_V_AWSIZE,
        m_axi_dram_V_AWBURST,
        m_axi_dram_V_AWLOCK,
        m_axi_dram_V_AWCACHE,
        m_axi_dram_V_AWPROT,
        m_axi_dram_V_AWQOS,
        m_axi_dram_V_AWREGION,
        m_axi_dram_V_AWUSER,
        m_axi_dram_V_WVALID,
        m_axi_dram_V_WREADY,
        m_axi_dram_V_WDATA,
        m_axi_dram_V_WSTRB,
        m_axi_dram_V_WLAST,
        m_axi_dram_V_WID,
        m_axi_dram_V_WUSER,
        m_axi_dram_V_ARVALID,
        m_axi_dram_V_ARREADY,
        m_axi_dram_V_ARADDR,
        m_axi_dram_V_ARID,
        m_axi_dram_V_ARLEN,
        m_axi_dram_V_ARSIZE,
        m_axi_dram_V_ARBURST,
        m_axi_dram_V_ARLOCK,
        m_axi_dram_V_ARCACHE,
        m_axi_dram_V_ARPROT,
        m_axi_dram_V_ARQOS,
        m_axi_dram_V_ARREGION,
        m_axi_dram_V_ARUSER,
        m_axi_dram_V_RVALID,
        m_axi_dram_V_RREADY,
        m_axi_dram_V_RDATA,
        m_axi_dram_V_RLAST,
        m_axi_dram_V_RID,
        m_axi_dram_V_RUSER,
        m_axi_dram_V_RRESP,
        m_axi_dram_V_BVALID,
        m_axi_dram_V_BREADY,
        m_axi_dram_V_BRESP,
        m_axi_dram_V_BID,
        m_axi_dram_V_BUSER,
        dram_V_offset,
        valid_V,
        tag_0_V_read,
        tag_1_V_read,
        tag_2_V_read,
        tag_3_V_read,
        validArray_V_4_address0,
        validArray_V_4_ce0,
        validArray_V_4_we0,
        validArray_V_4_d0,
        tagArray_0_V_address0,
        tagArray_0_V_ce0,
        tagArray_0_V_we0,
        tagArray_0_V_d0,
        tagArray_1_V_address0,
        tagArray_1_V_ce0,
        tagArray_1_V_we0,
        tagArray_1_V_d0,
        tagArray_2_V_address0,
        tagArray_2_V_ce0,
        tagArray_2_V_we0,
        tagArray_2_V_d0,
        tagArray_3_V_address0,
        tagArray_3_V_ce0,
        tagArray_3_V_we0,
        tagArray_3_V_d0,
        dataArray_0_V_address0,
        dataArray_0_V_ce0,
        dataArray_0_V_we0,
        dataArray_0_V_d0,
        dataArray_0_V_q0,
        dataArray_1_V_address0,
        dataArray_1_V_ce0,
        dataArray_1_V_we0,
        dataArray_1_V_d0,
        dataArray_1_V_q0,
        dataArray_2_V_address0,
        dataArray_2_V_ce0,
        dataArray_2_V_we0,
        dataArray_2_V_d0,
        dataArray_2_V_q0,
        dataArray_3_V_address0,
        dataArray_3_V_ce0,
        dataArray_3_V_we0,
        dataArray_3_V_d0,
        dataArray_3_V_q0,
        mruArray_V_4_address0,
        mruArray_V_4_ce0,
        mruArray_V_4_we0,
        mruArray_V_4_d0,
        mruArray_V_4_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] i_addr_V;
output   m_axi_dram_V_AWVALID;
input   m_axi_dram_V_AWREADY;
output  [31:0] m_axi_dram_V_AWADDR;
output  [0:0] m_axi_dram_V_AWID;
output  [31:0] m_axi_dram_V_AWLEN;
output  [2:0] m_axi_dram_V_AWSIZE;
output  [1:0] m_axi_dram_V_AWBURST;
output  [1:0] m_axi_dram_V_AWLOCK;
output  [3:0] m_axi_dram_V_AWCACHE;
output  [2:0] m_axi_dram_V_AWPROT;
output  [3:0] m_axi_dram_V_AWQOS;
output  [3:0] m_axi_dram_V_AWREGION;
output  [0:0] m_axi_dram_V_AWUSER;
output   m_axi_dram_V_WVALID;
input   m_axi_dram_V_WREADY;
output  [511:0] m_axi_dram_V_WDATA;
output  [63:0] m_axi_dram_V_WSTRB;
output   m_axi_dram_V_WLAST;
output  [0:0] m_axi_dram_V_WID;
output  [0:0] m_axi_dram_V_WUSER;
output   m_axi_dram_V_ARVALID;
input   m_axi_dram_V_ARREADY;
output  [31:0] m_axi_dram_V_ARADDR;
output  [0:0] m_axi_dram_V_ARID;
output  [31:0] m_axi_dram_V_ARLEN;
output  [2:0] m_axi_dram_V_ARSIZE;
output  [1:0] m_axi_dram_V_ARBURST;
output  [1:0] m_axi_dram_V_ARLOCK;
output  [3:0] m_axi_dram_V_ARCACHE;
output  [2:0] m_axi_dram_V_ARPROT;
output  [3:0] m_axi_dram_V_ARQOS;
output  [3:0] m_axi_dram_V_ARREGION;
output  [0:0] m_axi_dram_V_ARUSER;
input   m_axi_dram_V_RVALID;
output   m_axi_dram_V_RREADY;
input  [511:0] m_axi_dram_V_RDATA;
input   m_axi_dram_V_RLAST;
input  [0:0] m_axi_dram_V_RID;
input  [0:0] m_axi_dram_V_RUSER;
input  [1:0] m_axi_dram_V_RRESP;
input   m_axi_dram_V_BVALID;
output   m_axi_dram_V_BREADY;
input  [1:0] m_axi_dram_V_BRESP;
input  [0:0] m_axi_dram_V_BID;
input  [0:0] m_axi_dram_V_BUSER;
input  [25:0] dram_V_offset;
input  [3:0] valid_V;
input  [27:0] tag_0_V_read;
input  [27:0] tag_1_V_read;
input  [27:0] tag_2_V_read;
input  [27:0] tag_3_V_read;
output  [3:0] validArray_V_4_address0;
output   validArray_V_4_ce0;
output   validArray_V_4_we0;
output  [3:0] validArray_V_4_d0;
output  [3:0] tagArray_0_V_address0;
output   tagArray_0_V_ce0;
output   tagArray_0_V_we0;
output  [27:0] tagArray_0_V_d0;
output  [3:0] tagArray_1_V_address0;
output   tagArray_1_V_ce0;
output   tagArray_1_V_we0;
output  [27:0] tagArray_1_V_d0;
output  [3:0] tagArray_2_V_address0;
output   tagArray_2_V_ce0;
output   tagArray_2_V_we0;
output  [27:0] tagArray_2_V_d0;
output  [3:0] tagArray_3_V_address0;
output   tagArray_3_V_ce0;
output   tagArray_3_V_we0;
output  [27:0] tagArray_3_V_d0;
output  [3:0] dataArray_0_V_address0;
output   dataArray_0_V_ce0;
output   dataArray_0_V_we0;
output  [511:0] dataArray_0_V_d0;
input  [511:0] dataArray_0_V_q0;
output  [3:0] dataArray_1_V_address0;
output   dataArray_1_V_ce0;
output   dataArray_1_V_we0;
output  [511:0] dataArray_1_V_d0;
input  [511:0] dataArray_1_V_q0;
output  [3:0] dataArray_2_V_address0;
output   dataArray_2_V_ce0;
output   dataArray_2_V_we0;
output  [511:0] dataArray_2_V_d0;
input  [511:0] dataArray_2_V_q0;
output  [3:0] dataArray_3_V_address0;
output   dataArray_3_V_ce0;
output   dataArray_3_V_we0;
output  [511:0] dataArray_3_V_d0;
input  [511:0] dataArray_3_V_q0;
output  [3:0] mruArray_V_4_address0;
output   mruArray_V_4_ce0;
output   mruArray_V_4_we0;
output  [3:0] mruArray_V_4_d0;
input  [3:0] mruArray_V_4_q0;
output  [511:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_dram_V_AWVALID;
reg m_axi_dram_V_WVALID;
reg m_axi_dram_V_ARVALID;
reg m_axi_dram_V_RREADY;
reg m_axi_dram_V_BREADY;
reg validArray_V_4_ce0;
reg validArray_V_4_we0;
reg[3:0] validArray_V_4_d0;
reg tagArray_0_V_ce0;
reg tagArray_0_V_we0;
reg tagArray_1_V_ce0;
reg tagArray_1_V_we0;
reg tagArray_2_V_ce0;
reg tagArray_2_V_we0;
reg tagArray_3_V_ce0;
reg tagArray_3_V_we0;
reg[3:0] dataArray_0_V_address0;
reg dataArray_0_V_ce0;
reg dataArray_0_V_we0;
reg[3:0] dataArray_1_V_address0;
reg dataArray_1_V_ce0;
reg dataArray_1_V_we0;
reg[3:0] dataArray_2_V_address0;
reg dataArray_2_V_ce0;
reg dataArray_2_V_we0;
reg[3:0] dataArray_3_V_address0;
reg dataArray_3_V_ce0;
reg dataArray_3_V_we0;
reg[3:0] mruArray_V_4_address0;
reg mruArray_V_4_ce0;
reg mruArray_V_4_we0;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    dram_V_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    dram_V_blk_n_R;
wire    ap_CS_fsm_state9;
reg    dram_V_blk_n_AW;
wire    ap_CS_fsm_state10;
reg    dram_V_blk_n_W;
wire    ap_CS_fsm_state11;
reg    dram_V_blk_n_B;
wire    ap_CS_fsm_state16;
reg   [0:0] isEvict_2_reg_933;
reg   [3:0] indexReg_V_fu_354_p4;
reg   [3:0] indexReg_V_reg_860;
reg   [27:0] tagReg_V_fu_364_p4;
reg   [27:0] tagReg_V_reg_870;
wire   [32:0] sext_cast_fu_378_p1;
reg   [32:0] sext_cast_reg_878;
wire   [32:0] sum_fu_382_p2;
reg   [32:0] sum_reg_883;
reg    ap_sig_ioackin_m_axi_dram_V_ARREADY;
wire   [63:0] tmp_fu_398_p1;
reg   [63:0] tmp_reg_894;
wire    ap_CS_fsm_state7;
reg   [3:0] mruArray_V_3_addr_reg_911;
reg   [3:0] tempMru_V_reg_916;
wire    ap_CS_fsm_state8;
wire   [3:0] tempValid_V_2_fu_620_p3;
reg   [3:0] tempValid_V_2_reg_921;
wire   [2:0] Hi_assign_fu_674_p3;
reg   [2:0] Hi_assign_reg_926;
wire   [0:0] isEvict_2_fu_736_p2;
wire   [31:0] Hi_assign_cast_fu_742_p1;
reg   [31:0] Hi_assign_cast_reg_937;
reg   [511:0] i_dramBlockR_V_reg_943;
wire   [1:0] tmp_34_fu_745_p1;
reg   [1:0] tmp_34_reg_951;
wire   [32:0] sum3_fu_773_p2;
reg   [32:0] sum3_reg_976;
wire   [511:0] tmp_5_fu_778_p6;
reg   [511:0] tmp_5_reg_981;
reg    ap_sig_ioackin_m_axi_dram_V_AWREADY;
wire   [3:0] dataArray_0_V_addr_gep_fu_285_p3;
wire   [3:0] dataArray_1_V_addr_gep_fu_292_p3;
wire   [3:0] dataArray_2_V_addr_gep_fu_299_p3;
wire   [3:0] dataArray_3_V_addr_gep_fu_306_p3;
wire   [63:0] sum_cast_fu_388_p1;
wire   [63:0] sum3_cast_fu_791_p1;
reg    ap_reg_ioackin_m_axi_dram_V_ARREADY;
reg    ap_reg_ioackin_m_axi_dram_V_AWREADY;
reg    ap_block_state16;
reg    ap_reg_ioackin_m_axi_dram_V_WREADY;
reg    ap_sig_ioackin_m_axi_dram_V_WREADY;
wire   [1:0] tmp_35_fu_801_p1;
wire   [0:0] tmp_3_fu_821_p2;
wire   [32:0] tmp_1_cast_fu_374_p1;
wire   [0:0] tmp_32_fu_448_p3;
wire   [0:0] tmp_33_fu_464_p3;
wire   [0:0] tmp_s_fu_402_p2;
wire   [0:0] tmp_26_fu_408_p1;
wire   [0:0] sel_tmp_fu_480_p2;
wire   [0:0] tmp_28_fu_416_p3;
wire   [0:0] tmp_30_fu_432_p3;
wire   [0:0] sel_tmp1_fu_486_p2;
wire   [0:0] sel_tmp2_fu_492_p2;
wire   [0:0] sel_tmp6_fu_504_p2;
wire   [0:0] sel_tmp9_fu_516_p2;
wire   [0:0] sel_tmp10_fu_522_p2;
wire   [0:0] sel_tmp7_fu_510_p2;
wire   [0:0] tmp_9_fu_528_p2;
wire   [0:0] sel_tmp3_fu_498_p2;
wire   [0:0] tmp_7_fu_534_p2;
wire   [0:0] tmp_27_fu_412_p1;
wire   [0:0] sel_tmp12_fu_548_p2;
wire   [0:0] tmp_29_fu_424_p3;
wire   [0:0] sel_tmp13_fu_554_p2;
wire   [0:0] sel_tmp14_fu_560_p2;
wire   [0:0] sel_tmp15_fu_566_p2;
wire   [3:0] sel_tmp11_fu_540_p3;
wire   [0:0] sel_tmp19_demorgan_fu_580_p2;
wire   [3:0] sel_tmp16_fu_572_p3;
wire   [0:0] sel_tmp23_fu_594_p2;
wire   [3:0] sel_tmp20_fu_586_p3;
wire   [0:0] tmp_31_fu_440_p3;
wire   [0:0] tmp4_fu_608_p2;
wire   [0:0] sel_tmp26_fu_614_p2;
wire   [3:0] sel_tmp24_fu_600_p3;
wire   [0:0] tmp_4_fu_640_p2;
wire   [1:0] sel_tmp28_fu_636_p1;
wire   [1:0] sel_tmp27_fu_628_p3;
wire   [1:0] sel_tmp29_fu_646_p3;
wire   [1:0] sel_tmp30_fu_654_p3;
wire   [2:0] p_s_fu_456_p3;
wire   [2:0] sel_tmp50_cast_fu_662_p1;
wire   [2:0] p_3_fu_472_p3;
wire   [2:0] sel_tmp31_fu_666_p3;
wire   [0:0] tmp5_fu_682_p2;
wire   [0:0] p_Result_1_not_fu_694_p2;
wire   [0:0] tmp6_fu_700_p2;
wire   [0:0] not_sel_tmp_fu_706_p2;
wire   [0:0] tmp7_fu_712_p2;
wire   [0:0] sel_tmp32_fu_688_p2;
wire   [0:0] sel_tmp33_fu_718_p2;
wire   [0:0] sel_tmp34_fu_724_p2;
wire   [0:0] not_sel_tmp2_fu_730_p2;
wire   [1:0] p_Repl2_2_fu_748_p5;
wire   [27:0] p_Repl2_2_fu_748_p6;
wire   [31:0] p_Result_s_fu_762_p3;
wire   [32:0] tmp_2_cast_fu_769_p1;
reg   [3:0] p_Result_4_fu_813_p4;
wire   [0:0] tmp_28_3_fu_842_p2;
wire   [0:0] tmp_28_2_fu_837_p2;
wire   [0:0] tmp_28_1_fu_832_p2;
wire   [0:0] tmp_6_fu_827_p2;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_reg_ioackin_m_axi_dram_V_ARREADY = 1'b0;
#0 ap_reg_ioackin_m_axi_dram_V_AWREADY = 1'b0;
#0 ap_reg_ioackin_m_axi_dram_V_WREADY = 1'b0;
end

PLRUCache_mux_42_cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 28 ),
    .din1_WIDTH( 28 ),
    .din2_WIDTH( 28 ),
    .din3_WIDTH( 28 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 28 ))
PLRUCache_mux_42_cud_U26(
    .din0(tag_0_V_read),
    .din1(tag_1_V_read),
    .din2(tag_2_V_read),
    .din3(tag_3_V_read),
    .din4(p_Repl2_2_fu_748_p5),
    .dout(p_Repl2_2_fu_748_p6)
);

PLRUCache_mux_42_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 512 ),
    .din1_WIDTH( 512 ),
    .din2_WIDTH( 512 ),
    .din3_WIDTH( 512 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 512 ))
PLRUCache_mux_42_bkb_U27(
    .din0(dataArray_0_V_q0),
    .din1(dataArray_1_V_q0),
    .din2(dataArray_2_V_q0),
    .din3(dataArray_3_V_q0),
    .din4(tmp_34_reg_951),
    .dout(tmp_5_fu_778_p6)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_dram_V_ARREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            if ((ap_sig_ioackin_m_axi_dram_V_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_dram_V_ARREADY <= 1'b0;
            end else if ((m_axi_dram_V_ARREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_dram_V_ARREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_dram_V_AWREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            if ((ap_sig_ioackin_m_axi_dram_V_AWREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_dram_V_AWREADY <= 1'b0;
            end else if ((m_axi_dram_V_AWREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_dram_V_AWREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_dram_V_WREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            if ((ap_sig_ioackin_m_axi_dram_V_WREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_dram_V_WREADY <= 1'b0;
            end else if ((m_axi_dram_V_WREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_dram_V_WREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((m_axi_dram_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        Hi_assign_cast_reg_937[2 : 0] <= Hi_assign_cast_fu_742_p1[2 : 0];
        i_dramBlockR_V_reg_943 <= m_axi_dram_V_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        Hi_assign_reg_926 <= Hi_assign_fu_674_p3;
        isEvict_2_reg_933 <= isEvict_2_fu_736_p2;
        tempMru_V_reg_916 <= mruArray_V_4_q0;
        tempValid_V_2_reg_921 <= tempValid_V_2_fu_620_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indexReg_V_reg_860 <= indexReg_V_fu_354_p4;
        sext_cast_reg_878[25 : 0] <= sext_cast_fu_378_p1[25 : 0];
        sum_reg_883 <= sum_fu_382_p2;
        tagReg_V_reg_870 <= tagReg_V_fu_364_p4;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        mruArray_V_3_addr_reg_911 <= tmp_fu_398_p1;
        tmp_reg_894[3 : 0] <= tmp_fu_398_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((m_axi_dram_V_RVALID == 1'b1) & (isEvict_2_reg_933 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        sum3_reg_976 <= sum3_fu_773_p2;
        tmp_34_reg_951 <= tmp_34_fu_745_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sig_ioackin_m_axi_dram_V_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        tmp_5_reg_981 <= tmp_5_fu_778_p6;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | (~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_dram_V_ARREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_dram_V_ARREADY = m_axi_dram_V_ARREADY;
    end else begin
        ap_sig_ioackin_m_axi_dram_V_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_dram_V_AWREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_dram_V_AWREADY = m_axi_dram_V_AWREADY;
    end else begin
        ap_sig_ioackin_m_axi_dram_V_AWREADY = 1'b1;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_dram_V_WREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_dram_V_WREADY = m_axi_dram_V_WREADY;
    end else begin
        ap_sig_ioackin_m_axi_dram_V_WREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        dataArray_0_V_address0 = dataArray_0_V_addr_gep_fu_285_p3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        dataArray_0_V_address0 = tmp_reg_894;
    end else begin
        dataArray_0_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16)) | ((m_axi_dram_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9)))) begin
        dataArray_0_V_ce0 = 1'b1;
    end else begin
        dataArray_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (tmp_35_fu_801_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        dataArray_0_V_we0 = 1'b1;
    end else begin
        dataArray_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        dataArray_1_V_address0 = dataArray_1_V_addr_gep_fu_292_p3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        dataArray_1_V_address0 = tmp_reg_894;
    end else begin
        dataArray_1_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16)) | ((m_axi_dram_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9)))) begin
        dataArray_1_V_ce0 = 1'b1;
    end else begin
        dataArray_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (tmp_35_fu_801_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        dataArray_1_V_we0 = 1'b1;
    end else begin
        dataArray_1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        dataArray_2_V_address0 = dataArray_2_V_addr_gep_fu_299_p3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        dataArray_2_V_address0 = tmp_reg_894;
    end else begin
        dataArray_2_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16)) | ((m_axi_dram_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9)))) begin
        dataArray_2_V_ce0 = 1'b1;
    end else begin
        dataArray_2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (tmp_35_fu_801_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state16))) begin
        dataArray_2_V_we0 = 1'b1;
    end else begin
        dataArray_2_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        dataArray_3_V_address0 = dataArray_3_V_addr_gep_fu_306_p3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        dataArray_3_V_address0 = tmp_reg_894;
    end else begin
        dataArray_3_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16)) | ((m_axi_dram_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9)))) begin
        dataArray_3_V_ce0 = 1'b1;
    end else begin
        dataArray_3_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (tmp_35_fu_801_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state16))) begin
        dataArray_3_V_we0 = 1'b1;
    end else begin
        dataArray_3_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dram_V_blk_n_AR = m_axi_dram_V_ARREADY;
    end else begin
        dram_V_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        dram_V_blk_n_AW = m_axi_dram_V_AWREADY;
    end else begin
        dram_V_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if (((isEvict_2_reg_933 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        dram_V_blk_n_B = m_axi_dram_V_BVALID;
    end else begin
        dram_V_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        dram_V_blk_n_R = m_axi_dram_V_RVALID;
    end else begin
        dram_V_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        dram_V_blk_n_W = m_axi_dram_V_WREADY;
    end else begin
        dram_V_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_dram_V_ARREADY == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_dram_V_ARVALID = 1'b1;
    end else begin
        m_axi_dram_V_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_dram_V_AWREADY == 1'b0) & (1'b1 == ap_CS_fsm_state10))) begin
        m_axi_dram_V_AWVALID = 1'b1;
    end else begin
        m_axi_dram_V_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (isEvict_2_reg_933 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        m_axi_dram_V_BREADY = 1'b1;
    end else begin
        m_axi_dram_V_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_dram_V_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_dram_V_RREADY = 1'b1;
    end else begin
        m_axi_dram_V_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_dram_V_WREADY == 1'b0) & (1'b1 == ap_CS_fsm_state11))) begin
        m_axi_dram_V_WVALID = 1'b1;
    end else begin
        m_axi_dram_V_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        mruArray_V_4_address0 = mruArray_V_3_addr_reg_911;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        mruArray_V_4_address0 = tmp_fu_398_p1;
    end else begin
        mruArray_V_4_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16)))) begin
        mruArray_V_4_ce0 = 1'b1;
    end else begin
        mruArray_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16) & (((tmp_35_fu_801_p1 == 2'd3) & (tmp_3_fu_821_p2 == 1'd1)) | ((tmp_35_fu_801_p1 == 2'd2) & (tmp_3_fu_821_p2 == 1'd1)) | ((tmp_35_fu_801_p1 == 2'd1) & (tmp_3_fu_821_p2 == 1'd1)) | ((tmp_35_fu_801_p1 == 2'd0) & (tmp_3_fu_821_p2 == 1'd1))))) begin
        mruArray_V_4_we0 = 1'b1;
    end else begin
        mruArray_V_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16))) begin
        tagArray_0_V_ce0 = 1'b1;
    end else begin
        tagArray_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (tmp_35_fu_801_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        tagArray_0_V_we0 = 1'b1;
    end else begin
        tagArray_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16))) begin
        tagArray_1_V_ce0 = 1'b1;
    end else begin
        tagArray_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (tmp_35_fu_801_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        tagArray_1_V_we0 = 1'b1;
    end else begin
        tagArray_1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16))) begin
        tagArray_2_V_ce0 = 1'b1;
    end else begin
        tagArray_2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (tmp_35_fu_801_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state16))) begin
        tagArray_2_V_we0 = 1'b1;
    end else begin
        tagArray_2_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16))) begin
        tagArray_3_V_ce0 = 1'b1;
    end else begin
        tagArray_3_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (tmp_35_fu_801_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state16))) begin
        tagArray_3_V_we0 = 1'b1;
    end else begin
        tagArray_3_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16))) begin
        validArray_V_4_ce0 = 1'b1;
    end else begin
        validArray_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16))) begin
        validArray_V_4_we0 = 1'b1;
    end else begin
        validArray_V_4_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((ap_sig_ioackin_m_axi_dram_V_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((m_axi_dram_V_RVALID == 1'b1) & (isEvict_2_reg_933 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else if (((m_axi_dram_V_RVALID == 1'b1) & (isEvict_2_reg_933 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((ap_sig_ioackin_m_axi_dram_V_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((ap_sig_ioackin_m_axi_dram_V_WREADY == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if ((~((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1)) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Hi_assign_cast_fu_742_p1 = Hi_assign_reg_926;

assign Hi_assign_fu_674_p3 = ((sel_tmp26_fu_614_p2[0:0] === 1'b1) ? p_3_fu_472_p3 : sel_tmp31_fu_666_p3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state16 = ((m_axi_dram_V_BVALID == 1'b0) & (isEvict_2_reg_933 == 1'd1));
end

assign ap_return = i_dramBlockR_V_reg_943;

assign dataArray_0_V_addr_gep_fu_285_p3 = tmp_reg_894;

assign dataArray_0_V_d0 = i_dramBlockR_V_reg_943;

assign dataArray_1_V_addr_gep_fu_292_p3 = tmp_reg_894;

assign dataArray_1_V_d0 = i_dramBlockR_V_reg_943;

assign dataArray_2_V_addr_gep_fu_299_p3 = tmp_reg_894;

assign dataArray_2_V_d0 = i_dramBlockR_V_reg_943;

assign dataArray_3_V_addr_gep_fu_306_p3 = tmp_reg_894;

assign dataArray_3_V_d0 = i_dramBlockR_V_reg_943;

integer ap_tvar_int_0;

always @ (i_addr_V) begin
    for (ap_tvar_int_0 = 4 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 3 - 0) begin
            indexReg_V_fu_354_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            indexReg_V_fu_354_p4[ap_tvar_int_0] = i_addr_V[3 - ap_tvar_int_0];
        end
    end
end

assign isEvict_2_fu_736_p2 = (sel_tmp34_fu_724_p2 & not_sel_tmp2_fu_730_p2);

assign m_axi_dram_V_ARADDR = sum_cast_fu_388_p1;

assign m_axi_dram_V_ARBURST = 2'd0;

assign m_axi_dram_V_ARCACHE = 4'd0;

assign m_axi_dram_V_ARID = 1'd0;

assign m_axi_dram_V_ARLEN = 32'd1;

assign m_axi_dram_V_ARLOCK = 2'd0;

assign m_axi_dram_V_ARPROT = 3'd0;

assign m_axi_dram_V_ARQOS = 4'd0;

assign m_axi_dram_V_ARREGION = 4'd0;

assign m_axi_dram_V_ARSIZE = 3'd0;

assign m_axi_dram_V_ARUSER = 1'd0;

assign m_axi_dram_V_AWADDR = sum3_cast_fu_791_p1;

assign m_axi_dram_V_AWBURST = 2'd0;

assign m_axi_dram_V_AWCACHE = 4'd0;

assign m_axi_dram_V_AWID = 1'd0;

assign m_axi_dram_V_AWLEN = 32'd1;

assign m_axi_dram_V_AWLOCK = 2'd0;

assign m_axi_dram_V_AWPROT = 3'd0;

assign m_axi_dram_V_AWQOS = 4'd0;

assign m_axi_dram_V_AWREGION = 4'd0;

assign m_axi_dram_V_AWSIZE = 3'd0;

assign m_axi_dram_V_AWUSER = 1'd0;

assign m_axi_dram_V_WDATA = tmp_5_reg_981;

assign m_axi_dram_V_WID = 1'd0;

assign m_axi_dram_V_WLAST = 1'b0;

assign m_axi_dram_V_WSTRB = 64'd18446744073709551615;

assign m_axi_dram_V_WUSER = 1'd0;

assign mruArray_V_4_d0 = {{{{tmp_28_3_fu_842_p2}, {tmp_28_2_fu_837_p2}}, {tmp_28_1_fu_832_p2}}, {tmp_6_fu_827_p2}};

assign not_sel_tmp2_fu_730_p2 = (sel_tmp26_fu_614_p2 ^ 1'd1);

assign not_sel_tmp_fu_706_p2 = (tmp_s_fu_402_p2 | tmp6_fu_700_p2);

assign p_3_fu_472_p3 = ((tmp_33_fu_464_p3[0:0] === 1'b1) ? 3'd4 : 3'd3);

assign p_Repl2_2_fu_748_p5 = Hi_assign_reg_926[1:0];

assign p_Result_1_not_fu_694_p2 = (tmp_27_fu_412_p1 ^ 1'd1);

always @ (*) begin
    p_Result_4_fu_813_p4 = tempMru_V_reg_916;
    p_Result_4_fu_813_p4[Hi_assign_cast_reg_937] = |(4'd1);
end

assign p_Result_s_fu_762_p3 = {{p_Repl2_2_fu_748_p6}, {indexReg_V_reg_860}};

assign p_s_fu_456_p3 = ((tmp_32_fu_448_p3[0:0] === 1'b1) ? 3'd4 : 3'd3);

assign sel_tmp10_fu_522_p2 = (tmp_s_fu_402_p2 & sel_tmp9_fu_516_p2);

assign sel_tmp11_fu_540_p3 = ((tmp_7_fu_534_p2[0:0] === 1'b1) ? 4'd15 : valid_V);

assign sel_tmp12_fu_548_p2 = (tmp_s_fu_402_p2 ^ 1'd1);

assign sel_tmp13_fu_554_p2 = (tmp_27_fu_412_p1 & sel_tmp12_fu_548_p2);

assign sel_tmp14_fu_560_p2 = (tmp_29_fu_424_p3 ^ 1'd1);

assign sel_tmp15_fu_566_p2 = (sel_tmp14_fu_560_p2 & sel_tmp13_fu_554_p2);

assign sel_tmp16_fu_572_p3 = ((sel_tmp15_fu_566_p2[0:0] === 1'b1) ? valid_V : sel_tmp11_fu_540_p3);

assign sel_tmp19_demorgan_fu_580_p2 = (tmp_s_fu_402_p2 | tmp_27_fu_412_p1);

assign sel_tmp1_fu_486_p2 = (tmp_28_fu_416_p3 & sel_tmp_fu_480_p2);

assign sel_tmp20_fu_586_p3 = ((sel_tmp19_demorgan_fu_580_p2[0:0] === 1'b1) ? sel_tmp16_fu_572_p3 : valid_V);

assign sel_tmp23_fu_594_p2 = (tmp_30_fu_432_p3 & sel_tmp1_fu_486_p2);

assign sel_tmp24_fu_600_p3 = ((sel_tmp23_fu_594_p2[0:0] === 1'b1) ? 4'd15 : sel_tmp20_fu_586_p3);

assign sel_tmp26_fu_614_p2 = (tmp4_fu_608_p2 & sel_tmp13_fu_554_p2);

assign sel_tmp27_fu_628_p3 = ((sel_tmp7_fu_510_p2[0:0] === 1'b1) ? 2'd1 : 2'd2);

assign sel_tmp28_fu_636_p1 = sel_tmp15_fu_566_p2;

assign sel_tmp29_fu_646_p3 = ((tmp_4_fu_640_p2[0:0] === 1'b1) ? sel_tmp28_fu_636_p1 : sel_tmp27_fu_628_p3);

assign sel_tmp2_fu_492_p2 = (tmp_30_fu_432_p3 ^ 1'd1);

assign sel_tmp30_fu_654_p3 = ((sel_tmp19_demorgan_fu_580_p2[0:0] === 1'b1) ? sel_tmp29_fu_646_p3 : 2'd0);

assign sel_tmp31_fu_666_p3 = ((sel_tmp23_fu_594_p2[0:0] === 1'b1) ? p_s_fu_456_p3 : sel_tmp50_cast_fu_662_p1);

assign sel_tmp32_fu_688_p2 = (tmp5_fu_682_p2 | sel_tmp7_fu_510_p2);

assign sel_tmp33_fu_718_p2 = (tmp7_fu_712_p2 & sel_tmp32_fu_688_p2);

assign sel_tmp34_fu_724_p2 = (sel_tmp33_fu_718_p2 | sel_tmp23_fu_594_p2);

assign sel_tmp3_fu_498_p2 = (sel_tmp2_fu_492_p2 & sel_tmp1_fu_486_p2);

assign sel_tmp50_cast_fu_662_p1 = sel_tmp30_fu_654_p3;

assign sel_tmp6_fu_504_p2 = (tmp_28_fu_416_p3 ^ 1'd1);

assign sel_tmp7_fu_510_p2 = (sel_tmp_fu_480_p2 & sel_tmp6_fu_504_p2);

assign sel_tmp9_fu_516_p2 = (tmp_26_fu_408_p1 ^ 1'd1);

assign sel_tmp_fu_480_p2 = (tmp_s_fu_402_p2 & tmp_26_fu_408_p1);

assign sext_cast_fu_378_p1 = dram_V_offset;

assign sum3_cast_fu_791_p1 = sum3_reg_976;

assign sum3_fu_773_p2 = (sext_cast_reg_878 + tmp_2_cast_fu_769_p1);

assign sum_cast_fu_388_p1 = sum_reg_883;

assign sum_fu_382_p2 = (sext_cast_fu_378_p1 + tmp_1_cast_fu_374_p1);

assign tagArray_0_V_address0 = tmp_reg_894;

assign tagArray_0_V_d0 = tagReg_V_reg_870;

assign tagArray_1_V_address0 = tmp_reg_894;

assign tagArray_1_V_d0 = tagReg_V_reg_870;

assign tagArray_2_V_address0 = tmp_reg_894;

assign tagArray_2_V_d0 = tagReg_V_reg_870;

assign tagArray_3_V_address0 = tmp_reg_894;

assign tagArray_3_V_d0 = tagReg_V_reg_870;

integer ap_tvar_int_1;

always @ (i_addr_V) begin
    for (ap_tvar_int_1 = 28 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 31 - 4) begin
            tagReg_V_fu_364_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tagReg_V_fu_364_p4[ap_tvar_int_1] = i_addr_V[31 - ap_tvar_int_1];
        end
    end
end

assign tempValid_V_2_fu_620_p3 = ((sel_tmp26_fu_614_p2[0:0] === 1'b1) ? valid_V : sel_tmp24_fu_600_p3);

assign tmp4_fu_608_p2 = (tmp_31_fu_440_p3 & tmp_29_fu_424_p3);

assign tmp5_fu_682_p2 = (sel_tmp3_fu_498_p2 | sel_tmp10_fu_522_p2);

assign tmp6_fu_700_p2 = (tmp_29_fu_424_p3 | p_Result_1_not_fu_694_p2);

assign tmp7_fu_712_p2 = (sel_tmp19_demorgan_fu_580_p2 & not_sel_tmp_fu_706_p2);

assign tmp_1_cast_fu_374_p1 = i_addr_V;

assign tmp_26_fu_408_p1 = mruArray_V_4_q0[0:0];

assign tmp_27_fu_412_p1 = valid_V[0:0];

assign tmp_28_1_fu_832_p2 = ((indexReg_V_reg_860 == 4'd1) ? 1'b1 : 1'b0);

assign tmp_28_2_fu_837_p2 = ((indexReg_V_reg_860 == 4'd2) ? 1'b1 : 1'b0);

assign tmp_28_3_fu_842_p2 = ((indexReg_V_reg_860 == 4'd3) ? 1'b1 : 1'b0);

assign tmp_28_fu_416_p3 = mruArray_V_4_q0[32'd1];

assign tmp_29_fu_424_p3 = valid_V[32'd1];

assign tmp_2_cast_fu_769_p1 = p_Result_s_fu_762_p3;

assign tmp_30_fu_432_p3 = mruArray_V_4_q0[32'd2];

assign tmp_31_fu_440_p3 = valid_V[32'd2];

assign tmp_32_fu_448_p3 = mruArray_V_4_q0[32'd3];

assign tmp_33_fu_464_p3 = valid_V[32'd3];

assign tmp_34_fu_745_p1 = Hi_assign_reg_926[1:0];

assign tmp_35_fu_801_p1 = Hi_assign_reg_926[1:0];

assign tmp_3_fu_821_p2 = ((p_Result_4_fu_813_p4 == 4'd15) ? 1'b1 : 1'b0);

assign tmp_4_fu_640_p2 = (sel_tmp15_fu_566_p2 | sel_tmp10_fu_522_p2);

assign tmp_6_fu_827_p2 = ((indexReg_V_reg_860 == 4'd0) ? 1'b1 : 1'b0);

assign tmp_7_fu_534_p2 = (tmp_9_fu_528_p2 | sel_tmp3_fu_498_p2);

assign tmp_9_fu_528_p2 = (sel_tmp7_fu_510_p2 | sel_tmp10_fu_522_p2);

assign tmp_fu_398_p1 = indexReg_V_reg_860;

assign tmp_s_fu_402_p2 = ((valid_V == 4'd15) ? 1'b1 : 1'b0);

assign validArray_V_4_address0 = tmp_reg_894;

always @ (*) begin
    validArray_V_4_d0 = tempValid_V_2_reg_921;
    validArray_V_4_d0[Hi_assign_cast_reg_937] = |(4'd1);
end

always @ (posedge ap_clk) begin
    sext_cast_reg_878[32:26] <= 7'b0000000;
    tmp_reg_894[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    Hi_assign_cast_reg_937[31:3] <= 29'b00000000000000000000000000000;
end

endmodule //ReadMiss
