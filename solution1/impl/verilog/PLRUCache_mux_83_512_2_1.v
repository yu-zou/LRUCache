// ==============================================================
// File generated on Wed Apr 17 12:02:50 EDT 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module PLRUCache_mux_83_512_2_1 #(
parameter
    ID                = 0,
    NUM_STAGE         = 1,
    din0_WIDTH       = 32,
    din1_WIDTH       = 32,
    din2_WIDTH       = 32,
    din3_WIDTH       = 32,
    din4_WIDTH       = 32,
    din5_WIDTH       = 32,
    din6_WIDTH       = 32,
    din7_WIDTH       = 32,
    din8_WIDTH         = 32,
    dout_WIDTH            = 32
)(
    input             clk,
    input             reset,
    input             ce,
    input  [511 : 0]     din0,
    input  [511 : 0]     din1,
    input  [511 : 0]     din2,
    input  [511 : 0]     din3,
    input  [511 : 0]     din4,
    input  [511 : 0]     din5,
    input  [511 : 0]     din6,
    input  [511 : 0]     din7,
    input  [2 : 0]    din8,
    output [511 : 0]   dout);

// puts internal signals
wire [2 : 0]     sel;
// level 1 signals
wire [511 : 0]         mux_1_0;
wire [511 : 0]         mux_1_1;
wire [511 : 0]         mux_1_2;
wire [511 : 0]         mux_1_3;
// level 2 signals
reg  [511 : 0]         mux_2_0_reg;
reg  [511 : 0]         mux_2_1_reg;
reg  [2 : 2]      sel2;
// level 3 signals
wire [511 : 0]         mux_3_0;

assign sel = din8;

// Generate level 1 logic
assign mux_1_0 = (sel[0] == 0)? din0 : din1;
assign mux_1_1 = (sel[0] == 0)? din2 : din3;
assign mux_1_2 = (sel[0] == 0)? din4 : din5;
assign mux_1_3 = (sel[0] == 0)? din6 : din7;

// Generate level 2 logic
always @(posedge clk or posedge reset) begin
    if (reset == 1)
        sel2 <= 0;
    else if (ce == 1)
        sel2 <= sel[2 : 2];
end

always @(posedge clk or posedge reset) begin
    if (reset == 1)
        mux_2_0_reg <= 0;
    else if (ce == 1) begin
        if (sel[1] == 0)
            mux_2_0_reg <= mux_1_0;
        else
            mux_2_0_reg <= mux_1_1;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset == 1)
        mux_2_1_reg <= 0;
    else if (ce == 1) begin
        if (sel[1] == 0)
            mux_2_1_reg <= mux_1_2;
        else
            mux_2_1_reg <= mux_1_3;
    end
end


// Generate level 3 logic
assign mux_3_0 = (sel2[2] == 0)? mux_2_0_reg : mux_2_1_reg;

// output logic
assign dout = mux_3_0;

endmodule
