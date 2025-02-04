// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module WriteHit (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        i_addr_V,
        i_wdata_V,
        valid_V,
        tag_0_V_read,
        tag_1_V_read,
        tag_2_V_read,
        tag_3_V_read,
        tag_4_V_read,
        tag_5_V_read,
        tag_6_V_read,
        tag_7_V_read,
        dataArray_0_V_address0,
        dataArray_0_V_ce0,
        dataArray_0_V_we0,
        dataArray_0_V_d0,
        dataArray_1_V_address0,
        dataArray_1_V_ce0,
        dataArray_1_V_we0,
        dataArray_1_V_d0,
        dataArray_2_V_address0,
        dataArray_2_V_ce0,
        dataArray_2_V_we0,
        dataArray_2_V_d0,
        dataArray_3_V_address0,
        dataArray_3_V_ce0,
        dataArray_3_V_we0,
        dataArray_3_V_d0,
        dataArray_4_V_address0,
        dataArray_4_V_ce0,
        dataArray_4_V_we0,
        dataArray_4_V_d0,
        dataArray_5_V_address0,
        dataArray_5_V_ce0,
        dataArray_5_V_we0,
        dataArray_5_V_d0,
        dataArray_6_V_address0,
        dataArray_6_V_ce0,
        dataArray_6_V_we0,
        dataArray_6_V_d0,
        dataArray_7_V_address0,
        dataArray_7_V_ce0,
        dataArray_7_V_we0,
        dataArray_7_V_d0,
        mruArray_V_2_address0,
        mruArray_V_2_ce0,
        mruArray_V_2_we0,
        mruArray_V_2_d0,
        mruArray_V_2_q0
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] i_addr_V;
input  [511:0] i_wdata_V;
input  [7:0] valid_V;
input  [23:0] tag_0_V_read;
input  [23:0] tag_1_V_read;
input  [23:0] tag_2_V_read;
input  [23:0] tag_3_V_read;
input  [23:0] tag_4_V_read;
input  [23:0] tag_5_V_read;
input  [23:0] tag_6_V_read;
input  [23:0] tag_7_V_read;
output  [7:0] dataArray_0_V_address0;
output   dataArray_0_V_ce0;
output   dataArray_0_V_we0;
output  [511:0] dataArray_0_V_d0;
output  [7:0] dataArray_1_V_address0;
output   dataArray_1_V_ce0;
output   dataArray_1_V_we0;
output  [511:0] dataArray_1_V_d0;
output  [7:0] dataArray_2_V_address0;
output   dataArray_2_V_ce0;
output   dataArray_2_V_we0;
output  [511:0] dataArray_2_V_d0;
output  [7:0] dataArray_3_V_address0;
output   dataArray_3_V_ce0;
output   dataArray_3_V_we0;
output  [511:0] dataArray_3_V_d0;
output  [7:0] dataArray_4_V_address0;
output   dataArray_4_V_ce0;
output   dataArray_4_V_we0;
output  [511:0] dataArray_4_V_d0;
output  [7:0] dataArray_5_V_address0;
output   dataArray_5_V_ce0;
output   dataArray_5_V_we0;
output  [511:0] dataArray_5_V_d0;
output  [7:0] dataArray_6_V_address0;
output   dataArray_6_V_ce0;
output   dataArray_6_V_we0;
output  [511:0] dataArray_6_V_d0;
output  [7:0] dataArray_7_V_address0;
output   dataArray_7_V_ce0;
output   dataArray_7_V_we0;
output  [511:0] dataArray_7_V_d0;
output  [7:0] mruArray_V_2_address0;
output   mruArray_V_2_ce0;
output   mruArray_V_2_we0;
output  [7:0] mruArray_V_2_d0;
input  [7:0] mruArray_V_2_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg dataArray_0_V_ce0;
reg dataArray_0_V_we0;
reg dataArray_1_V_ce0;
reg dataArray_1_V_we0;
reg dataArray_2_V_ce0;
reg dataArray_2_V_we0;
reg dataArray_3_V_ce0;
reg dataArray_3_V_we0;
reg dataArray_4_V_ce0;
reg dataArray_4_V_we0;
reg dataArray_5_V_ce0;
reg dataArray_5_V_we0;
reg dataArray_6_V_ce0;
reg dataArray_6_V_we0;
reg dataArray_7_V_ce0;
reg dataArray_7_V_we0;
reg[7:0] mruArray_V_2_address0;
reg mruArray_V_2_ce0;
reg mruArray_V_2_we0;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] indexReg_V_fu_323_p4;
reg   [7:0] indexReg_V_reg_774;
wire   [63:0] tmp_fu_343_p1;
reg   [63:0] tmp_reg_786;
reg   [7:0] mruArray_V_1_addr_reg_798;
wire   [0:0] or_cond3_fu_458_p2;
reg   [0:0] or_cond3_reg_803;
wire   [3:0] sel_tmp10_fu_622_p3;
reg   [3:0] sel_tmp10_reg_808;
wire   [0:0] sel_tmp33_demorgan_fu_630_p2;
reg   [0:0] sel_tmp33_demorgan_reg_813;
wire   [0:0] sel_tmp14_fu_654_p2;
reg   [0:0] sel_tmp14_reg_818;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_s_fu_707_p2;
wire   [2:0] tmp_32_fu_693_p1;
reg   [23:0] tagReg_V_fu_333_p4;
wire   [0:0] tmp_24_fu_348_p1;
wire   [0:0] tmp_1_fu_352_p2;
wire   [0:0] tmp_25_fu_364_p3;
wire   [0:0] tmp_10_1_fu_372_p2;
wire   [0:0] tmp_26_fu_384_p3;
wire   [0:0] tmp_10_2_fu_392_p2;
wire   [0:0] tmp_27_fu_404_p3;
wire   [0:0] tmp_10_3_fu_412_p2;
wire   [0:0] tmp_28_fu_424_p3;
wire   [0:0] tmp_10_4_fu_432_p2;
wire   [0:0] tmp_29_fu_444_p3;
wire   [0:0] tmp_10_5_fu_452_p2;
wire   [0:0] tmp_31_fu_478_p3;
wire   [0:0] tmp_10_7_fu_486_p2;
wire   [0:0] or_cond_fu_358_p2;
wire   [0:0] or_cond5_fu_492_p2;
wire   [0:0] tmp_4_fu_506_p2;
wire   [3:0] p_cast_fu_498_p3;
wire   [0:0] or_cond8_fu_378_p2;
wire   [0:0] sel_tmp1_fu_520_p2;
wire   [0:0] sel_tmp6_demorgan_fu_532_p2;
wire   [0:0] or_cond9_fu_398_p2;
wire   [0:0] sel_tmp6_fu_538_p2;
wire   [0:0] sel_tmp7_fu_544_p2;
wire   [0:0] sel_tmp2_fu_526_p2;
wire   [0:0] tmp_5_fu_558_p2;
wire   [3:0] sel_tmp3_cast_fu_550_p3;
wire   [3:0] sel_tmp_fu_512_p3;
wire   [0:0] sel_tmp13_demorgan_fu_572_p2;
wire   [0:0] or_cond1_fu_418_p2;
wire   [0:0] sel_tmp4_fu_578_p2;
wire   [0:0] sel_tmp22_demorgan_fu_590_p2;
wire   [0:0] or_cond2_fu_438_p2;
wire   [0:0] sel_tmp9_fu_596_p2;
wire   [0:0] sel_tmp3_fu_602_p2;
wire   [0:0] sel_tmp5_fu_584_p2;
wire   [0:0] tmp_6_fu_616_p2;
wire   [3:0] sel_tmp11_cast_fu_608_p3;
wire   [3:0] sel_tmp8_fu_564_p3;
wire   [0:0] sel_tmp46_demorgan_fu_636_p2;
wire   [0:0] tmp_10_6_fu_472_p2;
wire   [0:0] sel_tmp13_fu_642_p2;
wire   [0:0] tmp7_fu_648_p2;
wire   [0:0] tmp_30_fu_464_p3;
wire   [0:0] sel_tmp11_fu_660_p2;
wire   [0:0] sel_tmp12_fu_665_p2;
wire   [0:0] tmp_8_fu_677_p2;
wire   [3:0] sel_tmp17_cast_fu_670_p3;
wire   [3:0] evictWay_lcssa_fu_682_p3;
wire   [31:0] evictWay_lcssa_cast_fu_689_p1;
reg   [7:0] p_Result_s_fu_697_p4;
wire   [0:0] val_assign_7_fu_748_p2;
wire   [0:0] val_assign_6_fu_743_p2;
wire   [0:0] val_assign_5_fu_738_p2;
wire   [0:0] val_assign_4_fu_733_p2;
wire   [0:0] val_assign_3_fu_728_p2;
wire   [0:0] val_assign_2_fu_723_p2;
wire   [0:0] val_assign_1_fu_718_p2;
wire   [0:0] val_assign_fu_713_p2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indexReg_V_reg_774 <= indexReg_V_fu_323_p4;
        mruArray_V_1_addr_reg_798 <= tmp_fu_343_p1;
        or_cond3_reg_803 <= or_cond3_fu_458_p2;
        sel_tmp10_reg_808 <= sel_tmp10_fu_622_p3;
        sel_tmp14_reg_818 <= sel_tmp14_fu_654_p2;
        sel_tmp33_demorgan_reg_813 <= sel_tmp33_demorgan_fu_630_p2;
        tmp_reg_786[7 : 0] <= tmp_fu_343_p1[7 : 0];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dataArray_0_V_ce0 = 1'b1;
    end else begin
        dataArray_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_32_fu_693_p1 == 3'd0))) begin
        dataArray_0_V_we0 = 1'b1;
    end else begin
        dataArray_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dataArray_1_V_ce0 = 1'b1;
    end else begin
        dataArray_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_32_fu_693_p1 == 3'd1))) begin
        dataArray_1_V_we0 = 1'b1;
    end else begin
        dataArray_1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dataArray_2_V_ce0 = 1'b1;
    end else begin
        dataArray_2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_32_fu_693_p1 == 3'd2))) begin
        dataArray_2_V_we0 = 1'b1;
    end else begin
        dataArray_2_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dataArray_3_V_ce0 = 1'b1;
    end else begin
        dataArray_3_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_32_fu_693_p1 == 3'd3))) begin
        dataArray_3_V_we0 = 1'b1;
    end else begin
        dataArray_3_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dataArray_4_V_ce0 = 1'b1;
    end else begin
        dataArray_4_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_32_fu_693_p1 == 3'd4))) begin
        dataArray_4_V_we0 = 1'b1;
    end else begin
        dataArray_4_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dataArray_5_V_ce0 = 1'b1;
    end else begin
        dataArray_5_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_32_fu_693_p1 == 3'd5))) begin
        dataArray_5_V_we0 = 1'b1;
    end else begin
        dataArray_5_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dataArray_6_V_ce0 = 1'b1;
    end else begin
        dataArray_6_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_32_fu_693_p1 == 3'd6))) begin
        dataArray_6_V_we0 = 1'b1;
    end else begin
        dataArray_6_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dataArray_7_V_ce0 = 1'b1;
    end else begin
        dataArray_7_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_32_fu_693_p1 == 3'd7))) begin
        dataArray_7_V_we0 = 1'b1;
    end else begin
        dataArray_7_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mruArray_V_2_address0 = mruArray_V_1_addr_reg_798;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        mruArray_V_2_address0 = tmp_fu_343_p1;
    end else begin
        mruArray_V_2_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        mruArray_V_2_ce0 = 1'b1;
    end else begin
        mruArray_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_s_fu_707_p2 == 1'd1))) begin
        mruArray_V_2_we0 = 1'b1;
    end else begin
        mruArray_V_2_we0 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign dataArray_0_V_address0 = tmp_reg_786;

assign dataArray_0_V_d0 = i_wdata_V;

assign dataArray_1_V_address0 = tmp_reg_786;

assign dataArray_1_V_d0 = i_wdata_V;

assign dataArray_2_V_address0 = tmp_reg_786;

assign dataArray_2_V_d0 = i_wdata_V;

assign dataArray_3_V_address0 = tmp_reg_786;

assign dataArray_3_V_d0 = i_wdata_V;

assign dataArray_4_V_address0 = tmp_reg_786;

assign dataArray_4_V_d0 = i_wdata_V;

assign dataArray_5_V_address0 = tmp_reg_786;

assign dataArray_5_V_d0 = i_wdata_V;

assign dataArray_6_V_address0 = tmp_reg_786;

assign dataArray_6_V_d0 = i_wdata_V;

assign dataArray_7_V_address0 = tmp_reg_786;

assign dataArray_7_V_d0 = i_wdata_V;

assign evictWay_lcssa_cast_fu_689_p1 = evictWay_lcssa_fu_682_p3;

assign evictWay_lcssa_fu_682_p3 = ((tmp_8_fu_677_p2[0:0] === 1'b1) ? sel_tmp17_cast_fu_670_p3 : sel_tmp10_reg_808);

integer ap_tvar_int_0;

always @ (i_addr_V) begin
    for (ap_tvar_int_0 = 8 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 7 - 0) begin
            indexReg_V_fu_323_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            indexReg_V_fu_323_p4[ap_tvar_int_0] = i_addr_V[7 - ap_tvar_int_0];
        end
    end
end

assign mruArray_V_2_d0 = {{{{{{{{val_assign_7_fu_748_p2}, {val_assign_6_fu_743_p2}}, {val_assign_5_fu_738_p2}}, {val_assign_4_fu_733_p2}}, {val_assign_3_fu_728_p2}}, {val_assign_2_fu_723_p2}}, {val_assign_1_fu_718_p2}}, {val_assign_fu_713_p2}};

assign or_cond1_fu_418_p2 = (tmp_27_fu_404_p3 & tmp_10_3_fu_412_p2);

assign or_cond2_fu_438_p2 = (tmp_28_fu_424_p3 & tmp_10_4_fu_432_p2);

assign or_cond3_fu_458_p2 = (tmp_29_fu_444_p3 & tmp_10_5_fu_452_p2);

assign or_cond5_fu_492_p2 = (tmp_31_fu_478_p3 & tmp_10_7_fu_486_p2);

assign or_cond8_fu_378_p2 = (tmp_25_fu_364_p3 & tmp_10_1_fu_372_p2);

assign or_cond9_fu_398_p2 = (tmp_26_fu_384_p3 & tmp_10_2_fu_392_p2);

assign or_cond_fu_358_p2 = (tmp_24_fu_348_p1 & tmp_1_fu_352_p2);

always @ (*) begin
    p_Result_s_fu_697_p4 = mruArray_V_2_q0;
    p_Result_s_fu_697_p4[evictWay_lcssa_cast_fu_689_p1] = |(8'd1);
end

assign p_cast_fu_498_p3 = ((or_cond_fu_358_p2[0:0] === 1'b1) ? 4'd0 : 4'd7);

assign sel_tmp10_fu_622_p3 = ((tmp_6_fu_616_p2[0:0] === 1'b1) ? sel_tmp11_cast_fu_608_p3 : sel_tmp8_fu_564_p3);

assign sel_tmp11_cast_fu_608_p3 = ((sel_tmp3_fu_602_p2[0:0] === 1'b1) ? 4'd4 : 4'd3);

assign sel_tmp11_fu_660_p2 = (sel_tmp33_demorgan_reg_813 ^ 1'd1);

assign sel_tmp12_fu_665_p2 = (sel_tmp11_fu_660_p2 & or_cond3_reg_803);

assign sel_tmp13_demorgan_fu_572_p2 = (sel_tmp6_demorgan_fu_532_p2 | or_cond9_fu_398_p2);

assign sel_tmp13_fu_642_p2 = (sel_tmp46_demorgan_fu_636_p2 ^ 1'd1);

assign sel_tmp14_fu_654_p2 = (tmp_30_fu_464_p3 & tmp7_fu_648_p2);

assign sel_tmp17_cast_fu_670_p3 = ((sel_tmp14_reg_818[0:0] === 1'b1) ? 4'd6 : 4'd5);

assign sel_tmp1_fu_520_p2 = (or_cond_fu_358_p2 ^ 1'd1);

assign sel_tmp22_demorgan_fu_590_p2 = (sel_tmp13_demorgan_fu_572_p2 | or_cond1_fu_418_p2);

assign sel_tmp2_fu_526_p2 = (sel_tmp1_fu_520_p2 & or_cond8_fu_378_p2);

assign sel_tmp33_demorgan_fu_630_p2 = (sel_tmp22_demorgan_fu_590_p2 | or_cond2_fu_438_p2);

assign sel_tmp3_cast_fu_550_p3 = ((sel_tmp7_fu_544_p2[0:0] === 1'b1) ? 4'd2 : 4'd1);

assign sel_tmp3_fu_602_p2 = (sel_tmp9_fu_596_p2 & or_cond2_fu_438_p2);

assign sel_tmp46_demorgan_fu_636_p2 = (sel_tmp33_demorgan_fu_630_p2 | or_cond3_fu_458_p2);

assign sel_tmp4_fu_578_p2 = (sel_tmp13_demorgan_fu_572_p2 ^ 1'd1);

assign sel_tmp5_fu_584_p2 = (sel_tmp4_fu_578_p2 & or_cond1_fu_418_p2);

assign sel_tmp6_demorgan_fu_532_p2 = (or_cond_fu_358_p2 | or_cond8_fu_378_p2);

assign sel_tmp6_fu_538_p2 = (sel_tmp6_demorgan_fu_532_p2 ^ 1'd1);

assign sel_tmp7_fu_544_p2 = (sel_tmp6_fu_538_p2 & or_cond9_fu_398_p2);

assign sel_tmp8_fu_564_p3 = ((tmp_5_fu_558_p2[0:0] === 1'b1) ? sel_tmp3_cast_fu_550_p3 : sel_tmp_fu_512_p3);

assign sel_tmp9_fu_596_p2 = (sel_tmp22_demorgan_fu_590_p2 ^ 1'd1);

assign sel_tmp_fu_512_p3 = ((tmp_4_fu_506_p2[0:0] === 1'b1) ? p_cast_fu_498_p3 : 4'd8);

integer ap_tvar_int_1;

always @ (i_addr_V) begin
    for (ap_tvar_int_1 = 24 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 31 - 8) begin
            tagReg_V_fu_333_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tagReg_V_fu_333_p4[ap_tvar_int_1] = i_addr_V[31 - ap_tvar_int_1];
        end
    end
end

assign tmp7_fu_648_p2 = (tmp_10_6_fu_472_p2 & sel_tmp13_fu_642_p2);

assign tmp_10_1_fu_372_p2 = ((tagReg_V_fu_333_p4 == tag_1_V_read) ? 1'b1 : 1'b0);

assign tmp_10_2_fu_392_p2 = ((tagReg_V_fu_333_p4 == tag_2_V_read) ? 1'b1 : 1'b0);

assign tmp_10_3_fu_412_p2 = ((tagReg_V_fu_333_p4 == tag_3_V_read) ? 1'b1 : 1'b0);

assign tmp_10_4_fu_432_p2 = ((tagReg_V_fu_333_p4 == tag_4_V_read) ? 1'b1 : 1'b0);

assign tmp_10_5_fu_452_p2 = ((tagReg_V_fu_333_p4 == tag_5_V_read) ? 1'b1 : 1'b0);

assign tmp_10_6_fu_472_p2 = ((tagReg_V_fu_333_p4 == tag_6_V_read) ? 1'b1 : 1'b0);

assign tmp_10_7_fu_486_p2 = ((tagReg_V_fu_333_p4 == tag_7_V_read) ? 1'b1 : 1'b0);

assign tmp_1_fu_352_p2 = ((tagReg_V_fu_333_p4 == tag_0_V_read) ? 1'b1 : 1'b0);

assign tmp_24_fu_348_p1 = valid_V[0:0];

assign tmp_25_fu_364_p3 = valid_V[32'd1];

assign tmp_26_fu_384_p3 = valid_V[32'd2];

assign tmp_27_fu_404_p3 = valid_V[32'd3];

assign tmp_28_fu_424_p3 = valid_V[32'd4];

assign tmp_29_fu_444_p3 = valid_V[32'd5];

assign tmp_30_fu_464_p3 = valid_V[32'd6];

assign tmp_31_fu_478_p3 = valid_V[32'd7];

assign tmp_32_fu_693_p1 = evictWay_lcssa_fu_682_p3[2:0];

assign tmp_4_fu_506_p2 = (or_cond_fu_358_p2 | or_cond5_fu_492_p2);

assign tmp_5_fu_558_p2 = (sel_tmp7_fu_544_p2 | sel_tmp2_fu_526_p2);

assign tmp_6_fu_616_p2 = (sel_tmp5_fu_584_p2 | sel_tmp3_fu_602_p2);

assign tmp_8_fu_677_p2 = (sel_tmp14_reg_818 | sel_tmp12_fu_665_p2);

assign tmp_fu_343_p1 = indexReg_V_fu_323_p4;

assign tmp_s_fu_707_p2 = ((p_Result_s_fu_697_p4 == 8'd255) ? 1'b1 : 1'b0);

assign val_assign_1_fu_718_p2 = ((indexReg_V_reg_774 == 8'd1) ? 1'b1 : 1'b0);

assign val_assign_2_fu_723_p2 = ((indexReg_V_reg_774 == 8'd2) ? 1'b1 : 1'b0);

assign val_assign_3_fu_728_p2 = ((indexReg_V_reg_774 == 8'd3) ? 1'b1 : 1'b0);

assign val_assign_4_fu_733_p2 = ((indexReg_V_reg_774 == 8'd4) ? 1'b1 : 1'b0);

assign val_assign_5_fu_738_p2 = ((indexReg_V_reg_774 == 8'd5) ? 1'b1 : 1'b0);

assign val_assign_6_fu_743_p2 = ((indexReg_V_reg_774 == 8'd6) ? 1'b1 : 1'b0);

assign val_assign_7_fu_748_p2 = ((indexReg_V_reg_774 == 8'd7) ? 1'b1 : 1'b0);

assign val_assign_fu_713_p2 = ((indexReg_V_reg_774 == 8'd0) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    tmp_reg_786[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //WriteHit
