set moduleName ReadMiss
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {ReadMiss}
set C_modelType { int 512 }
set C_modelArgList {
	{ i_addr_V int 32 regular  }
	{ dram_V int 512 regular {axi_master 2}  }
	{ dram_V_offset int 26 regular  }
	{ valid_V int 8 regular  }
	{ tag_0_V_read int 24 regular  }
	{ tag_1_V_read int 24 regular  }
	{ tag_2_V_read int 24 regular  }
	{ tag_3_V_read int 24 regular  }
	{ tag_4_V_read int 24 regular  }
	{ tag_5_V_read int 24 regular  }
	{ tag_6_V_read int 24 regular  }
	{ tag_7_V_read int 24 regular  }
	{ validArray_V_4 int 8 regular {array 256 { 0 3 } 0 1 }  }
	{ tagArray_0_V int 24 regular {array 256 { 0 3 } 0 1 }  }
	{ tagArray_1_V int 24 regular {array 256 { 0 3 } 0 1 }  }
	{ tagArray_2_V int 24 regular {array 256 { 0 3 } 0 1 }  }
	{ tagArray_3_V int 24 regular {array 256 { 0 3 } 0 1 }  }
	{ tagArray_4_V int 24 regular {array 256 { 0 3 } 0 1 }  }
	{ tagArray_5_V int 24 regular {array 256 { 0 3 } 0 1 }  }
	{ tagArray_6_V int 24 regular {array 256 { 0 3 } 0 1 }  }
	{ tagArray_7_V int 24 regular {array 256 { 0 3 } 0 1 }  }
	{ dataArray_0_V int 512 regular {array 256 { 2 3 } 1 1 }  }
	{ dataArray_1_V int 512 regular {array 256 { 2 3 } 1 1 }  }
	{ dataArray_2_V int 512 regular {array 256 { 2 3 } 1 1 }  }
	{ dataArray_3_V int 512 regular {array 256 { 2 3 } 1 1 }  }
	{ dataArray_4_V int 512 regular {array 256 { 2 3 } 1 1 }  }
	{ dataArray_5_V int 512 regular {array 256 { 2 3 } 1 1 }  }
	{ dataArray_6_V int 512 regular {array 256 { 2 3 } 1 1 }  }
	{ dataArray_7_V int 512 regular {array 256 { 2 3 } 1 1 }  }
	{ mruArray_V_4 int 8 regular {array 256 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "i_addr_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dram_V", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "dram_V_offset", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "valid_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tag_0_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_1_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_2_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_3_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_4_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_5_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_6_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_7_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "validArray_V_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tagArray_0_V", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tagArray_1_V", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tagArray_2_V", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tagArray_3_V", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tagArray_4_V", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tagArray_5_V", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tagArray_6_V", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tagArray_7_V", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataArray_0_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "dataArray_1_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "dataArray_2_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "dataArray_3_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "dataArray_4_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "dataArray_5_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "dataArray_6_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "dataArray_7_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READWRITE"} , 
 	{ "Name" : "mruArray_V_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512} ]}
# RTL Port declarations: 
set portNum 144
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ i_addr_V sc_in sc_lv 32 signal 0 } 
	{ m_axi_dram_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_dram_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_dram_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_dram_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_dram_V_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_dram_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_dram_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_dram_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_dram_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_dram_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_dram_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_dram_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_dram_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_dram_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_dram_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_dram_V_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_dram_V_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_dram_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_dram_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_dram_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_dram_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_dram_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_dram_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_dram_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_dram_V_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_dram_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_dram_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_dram_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_dram_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_dram_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_dram_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_dram_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_dram_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_dram_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_dram_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_dram_V_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_dram_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_dram_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_dram_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_dram_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_dram_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_dram_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_dram_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_dram_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_dram_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ dram_V_offset sc_in sc_lv 26 signal 2 } 
	{ valid_V sc_in sc_lv 8 signal 3 } 
	{ tag_0_V_read sc_in sc_lv 24 signal 4 } 
	{ tag_1_V_read sc_in sc_lv 24 signal 5 } 
	{ tag_2_V_read sc_in sc_lv 24 signal 6 } 
	{ tag_3_V_read sc_in sc_lv 24 signal 7 } 
	{ tag_4_V_read sc_in sc_lv 24 signal 8 } 
	{ tag_5_V_read sc_in sc_lv 24 signal 9 } 
	{ tag_6_V_read sc_in sc_lv 24 signal 10 } 
	{ tag_7_V_read sc_in sc_lv 24 signal 11 } 
	{ validArray_V_4_address0 sc_out sc_lv 8 signal 12 } 
	{ validArray_V_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ validArray_V_4_we0 sc_out sc_logic 1 signal 12 } 
	{ validArray_V_4_d0 sc_out sc_lv 8 signal 12 } 
	{ tagArray_0_V_address0 sc_out sc_lv 8 signal 13 } 
	{ tagArray_0_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ tagArray_0_V_we0 sc_out sc_logic 1 signal 13 } 
	{ tagArray_0_V_d0 sc_out sc_lv 24 signal 13 } 
	{ tagArray_1_V_address0 sc_out sc_lv 8 signal 14 } 
	{ tagArray_1_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ tagArray_1_V_we0 sc_out sc_logic 1 signal 14 } 
	{ tagArray_1_V_d0 sc_out sc_lv 24 signal 14 } 
	{ tagArray_2_V_address0 sc_out sc_lv 8 signal 15 } 
	{ tagArray_2_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ tagArray_2_V_we0 sc_out sc_logic 1 signal 15 } 
	{ tagArray_2_V_d0 sc_out sc_lv 24 signal 15 } 
	{ tagArray_3_V_address0 sc_out sc_lv 8 signal 16 } 
	{ tagArray_3_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ tagArray_3_V_we0 sc_out sc_logic 1 signal 16 } 
	{ tagArray_3_V_d0 sc_out sc_lv 24 signal 16 } 
	{ tagArray_4_V_address0 sc_out sc_lv 8 signal 17 } 
	{ tagArray_4_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ tagArray_4_V_we0 sc_out sc_logic 1 signal 17 } 
	{ tagArray_4_V_d0 sc_out sc_lv 24 signal 17 } 
	{ tagArray_5_V_address0 sc_out sc_lv 8 signal 18 } 
	{ tagArray_5_V_ce0 sc_out sc_logic 1 signal 18 } 
	{ tagArray_5_V_we0 sc_out sc_logic 1 signal 18 } 
	{ tagArray_5_V_d0 sc_out sc_lv 24 signal 18 } 
	{ tagArray_6_V_address0 sc_out sc_lv 8 signal 19 } 
	{ tagArray_6_V_ce0 sc_out sc_logic 1 signal 19 } 
	{ tagArray_6_V_we0 sc_out sc_logic 1 signal 19 } 
	{ tagArray_6_V_d0 sc_out sc_lv 24 signal 19 } 
	{ tagArray_7_V_address0 sc_out sc_lv 8 signal 20 } 
	{ tagArray_7_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ tagArray_7_V_we0 sc_out sc_logic 1 signal 20 } 
	{ tagArray_7_V_d0 sc_out sc_lv 24 signal 20 } 
	{ dataArray_0_V_address0 sc_out sc_lv 8 signal 21 } 
	{ dataArray_0_V_ce0 sc_out sc_logic 1 signal 21 } 
	{ dataArray_0_V_we0 sc_out sc_logic 1 signal 21 } 
	{ dataArray_0_V_d0 sc_out sc_lv 512 signal 21 } 
	{ dataArray_0_V_q0 sc_in sc_lv 512 signal 21 } 
	{ dataArray_1_V_address0 sc_out sc_lv 8 signal 22 } 
	{ dataArray_1_V_ce0 sc_out sc_logic 1 signal 22 } 
	{ dataArray_1_V_we0 sc_out sc_logic 1 signal 22 } 
	{ dataArray_1_V_d0 sc_out sc_lv 512 signal 22 } 
	{ dataArray_1_V_q0 sc_in sc_lv 512 signal 22 } 
	{ dataArray_2_V_address0 sc_out sc_lv 8 signal 23 } 
	{ dataArray_2_V_ce0 sc_out sc_logic 1 signal 23 } 
	{ dataArray_2_V_we0 sc_out sc_logic 1 signal 23 } 
	{ dataArray_2_V_d0 sc_out sc_lv 512 signal 23 } 
	{ dataArray_2_V_q0 sc_in sc_lv 512 signal 23 } 
	{ dataArray_3_V_address0 sc_out sc_lv 8 signal 24 } 
	{ dataArray_3_V_ce0 sc_out sc_logic 1 signal 24 } 
	{ dataArray_3_V_we0 sc_out sc_logic 1 signal 24 } 
	{ dataArray_3_V_d0 sc_out sc_lv 512 signal 24 } 
	{ dataArray_3_V_q0 sc_in sc_lv 512 signal 24 } 
	{ dataArray_4_V_address0 sc_out sc_lv 8 signal 25 } 
	{ dataArray_4_V_ce0 sc_out sc_logic 1 signal 25 } 
	{ dataArray_4_V_we0 sc_out sc_logic 1 signal 25 } 
	{ dataArray_4_V_d0 sc_out sc_lv 512 signal 25 } 
	{ dataArray_4_V_q0 sc_in sc_lv 512 signal 25 } 
	{ dataArray_5_V_address0 sc_out sc_lv 8 signal 26 } 
	{ dataArray_5_V_ce0 sc_out sc_logic 1 signal 26 } 
	{ dataArray_5_V_we0 sc_out sc_logic 1 signal 26 } 
	{ dataArray_5_V_d0 sc_out sc_lv 512 signal 26 } 
	{ dataArray_5_V_q0 sc_in sc_lv 512 signal 26 } 
	{ dataArray_6_V_address0 sc_out sc_lv 8 signal 27 } 
	{ dataArray_6_V_ce0 sc_out sc_logic 1 signal 27 } 
	{ dataArray_6_V_we0 sc_out sc_logic 1 signal 27 } 
	{ dataArray_6_V_d0 sc_out sc_lv 512 signal 27 } 
	{ dataArray_6_V_q0 sc_in sc_lv 512 signal 27 } 
	{ dataArray_7_V_address0 sc_out sc_lv 8 signal 28 } 
	{ dataArray_7_V_ce0 sc_out sc_logic 1 signal 28 } 
	{ dataArray_7_V_we0 sc_out sc_logic 1 signal 28 } 
	{ dataArray_7_V_d0 sc_out sc_lv 512 signal 28 } 
	{ dataArray_7_V_q0 sc_in sc_lv 512 signal 28 } 
	{ mruArray_V_4_address0 sc_out sc_lv 8 signal 29 } 
	{ mruArray_V_4_ce0 sc_out sc_logic 1 signal 29 } 
	{ mruArray_V_4_we0 sc_out sc_logic 1 signal 29 } 
	{ mruArray_V_4_d0 sc_out sc_lv 8 signal 29 } 
	{ mruArray_V_4_q0 sc_in sc_lv 8 signal 29 } 
	{ ap_return sc_out sc_lv 512 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "i_addr_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i_addr_V", "role": "default" }} , 
 	{ "name": "m_axi_dram_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_dram_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_dram_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dram_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_dram_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "AWID" }} , 
 	{ "name": "m_axi_dram_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dram_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_dram_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dram_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_dram_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_dram_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_dram_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_dram_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dram_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_dram_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_dram_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_dram_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_dram_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_dram_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_dram_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dram_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_dram_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dram_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_dram_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_dram_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "WID" }} , 
 	{ "name": "m_axi_dram_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_dram_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_dram_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_dram_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dram_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_dram_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "ARID" }} , 
 	{ "name": "m_axi_dram_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dram_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_dram_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dram_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_dram_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_dram_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_dram_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_dram_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dram_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_dram_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_dram_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_dram_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_dram_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_dram_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_dram_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dram_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_dram_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_dram_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "RID" }} , 
 	{ "name": "m_axi_dram_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_dram_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_dram_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_dram_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_dram_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_dram_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "BID" }} , 
 	{ "name": "m_axi_dram_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram_V", "role": "BUSER" }} , 
 	{ "name": "dram_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "dram_V_offset", "role": "default" }} , 
 	{ "name": "valid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "valid_V", "role": "default" }} , 
 	{ "name": "tag_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_0_V_read", "role": "default" }} , 
 	{ "name": "tag_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_1_V_read", "role": "default" }} , 
 	{ "name": "tag_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_2_V_read", "role": "default" }} , 
 	{ "name": "tag_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_3_V_read", "role": "default" }} , 
 	{ "name": "tag_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_4_V_read", "role": "default" }} , 
 	{ "name": "tag_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_5_V_read", "role": "default" }} , 
 	{ "name": "tag_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_6_V_read", "role": "default" }} , 
 	{ "name": "tag_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_7_V_read", "role": "default" }} , 
 	{ "name": "validArray_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "validArray_V_4", "role": "address0" }} , 
 	{ "name": "validArray_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "validArray_V_4", "role": "ce0" }} , 
 	{ "name": "validArray_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "validArray_V_4", "role": "we0" }} , 
 	{ "name": "validArray_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "validArray_V_4", "role": "d0" }} , 
 	{ "name": "tagArray_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tagArray_0_V", "role": "address0" }} , 
 	{ "name": "tagArray_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_0_V", "role": "ce0" }} , 
 	{ "name": "tagArray_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_0_V", "role": "we0" }} , 
 	{ "name": "tagArray_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tagArray_0_V", "role": "d0" }} , 
 	{ "name": "tagArray_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tagArray_1_V", "role": "address0" }} , 
 	{ "name": "tagArray_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_1_V", "role": "ce0" }} , 
 	{ "name": "tagArray_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_1_V", "role": "we0" }} , 
 	{ "name": "tagArray_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tagArray_1_V", "role": "d0" }} , 
 	{ "name": "tagArray_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tagArray_2_V", "role": "address0" }} , 
 	{ "name": "tagArray_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_2_V", "role": "ce0" }} , 
 	{ "name": "tagArray_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_2_V", "role": "we0" }} , 
 	{ "name": "tagArray_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tagArray_2_V", "role": "d0" }} , 
 	{ "name": "tagArray_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tagArray_3_V", "role": "address0" }} , 
 	{ "name": "tagArray_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_3_V", "role": "ce0" }} , 
 	{ "name": "tagArray_3_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_3_V", "role": "we0" }} , 
 	{ "name": "tagArray_3_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tagArray_3_V", "role": "d0" }} , 
 	{ "name": "tagArray_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tagArray_4_V", "role": "address0" }} , 
 	{ "name": "tagArray_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_4_V", "role": "ce0" }} , 
 	{ "name": "tagArray_4_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_4_V", "role": "we0" }} , 
 	{ "name": "tagArray_4_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tagArray_4_V", "role": "d0" }} , 
 	{ "name": "tagArray_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tagArray_5_V", "role": "address0" }} , 
 	{ "name": "tagArray_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_5_V", "role": "ce0" }} , 
 	{ "name": "tagArray_5_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_5_V", "role": "we0" }} , 
 	{ "name": "tagArray_5_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tagArray_5_V", "role": "d0" }} , 
 	{ "name": "tagArray_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tagArray_6_V", "role": "address0" }} , 
 	{ "name": "tagArray_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_6_V", "role": "ce0" }} , 
 	{ "name": "tagArray_6_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_6_V", "role": "we0" }} , 
 	{ "name": "tagArray_6_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tagArray_6_V", "role": "d0" }} , 
 	{ "name": "tagArray_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tagArray_7_V", "role": "address0" }} , 
 	{ "name": "tagArray_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_7_V", "role": "ce0" }} , 
 	{ "name": "tagArray_7_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tagArray_7_V", "role": "we0" }} , 
 	{ "name": "tagArray_7_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tagArray_7_V", "role": "d0" }} , 
 	{ "name": "dataArray_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_0_V", "role": "address0" }} , 
 	{ "name": "dataArray_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_0_V", "role": "ce0" }} , 
 	{ "name": "dataArray_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_0_V", "role": "we0" }} , 
 	{ "name": "dataArray_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_0_V", "role": "d0" }} , 
 	{ "name": "dataArray_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_0_V", "role": "q0" }} , 
 	{ "name": "dataArray_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_1_V", "role": "address0" }} , 
 	{ "name": "dataArray_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_1_V", "role": "ce0" }} , 
 	{ "name": "dataArray_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_1_V", "role": "we0" }} , 
 	{ "name": "dataArray_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_1_V", "role": "d0" }} , 
 	{ "name": "dataArray_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_1_V", "role": "q0" }} , 
 	{ "name": "dataArray_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_2_V", "role": "address0" }} , 
 	{ "name": "dataArray_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_2_V", "role": "ce0" }} , 
 	{ "name": "dataArray_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_2_V", "role": "we0" }} , 
 	{ "name": "dataArray_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_2_V", "role": "d0" }} , 
 	{ "name": "dataArray_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_2_V", "role": "q0" }} , 
 	{ "name": "dataArray_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_3_V", "role": "address0" }} , 
 	{ "name": "dataArray_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_3_V", "role": "ce0" }} , 
 	{ "name": "dataArray_3_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_3_V", "role": "we0" }} , 
 	{ "name": "dataArray_3_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_3_V", "role": "d0" }} , 
 	{ "name": "dataArray_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_3_V", "role": "q0" }} , 
 	{ "name": "dataArray_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_4_V", "role": "address0" }} , 
 	{ "name": "dataArray_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_4_V", "role": "ce0" }} , 
 	{ "name": "dataArray_4_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_4_V", "role": "we0" }} , 
 	{ "name": "dataArray_4_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_4_V", "role": "d0" }} , 
 	{ "name": "dataArray_4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_4_V", "role": "q0" }} , 
 	{ "name": "dataArray_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_5_V", "role": "address0" }} , 
 	{ "name": "dataArray_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_5_V", "role": "ce0" }} , 
 	{ "name": "dataArray_5_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_5_V", "role": "we0" }} , 
 	{ "name": "dataArray_5_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_5_V", "role": "d0" }} , 
 	{ "name": "dataArray_5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_5_V", "role": "q0" }} , 
 	{ "name": "dataArray_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_6_V", "role": "address0" }} , 
 	{ "name": "dataArray_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_6_V", "role": "ce0" }} , 
 	{ "name": "dataArray_6_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_6_V", "role": "we0" }} , 
 	{ "name": "dataArray_6_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_6_V", "role": "d0" }} , 
 	{ "name": "dataArray_6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_6_V", "role": "q0" }} , 
 	{ "name": "dataArray_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_7_V", "role": "address0" }} , 
 	{ "name": "dataArray_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_7_V", "role": "ce0" }} , 
 	{ "name": "dataArray_7_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_7_V", "role": "we0" }} , 
 	{ "name": "dataArray_7_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_7_V", "role": "d0" }} , 
 	{ "name": "dataArray_7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_7_V", "role": "q0" }} , 
 	{ "name": "mruArray_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mruArray_V_4", "role": "address0" }} , 
 	{ "name": "mruArray_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mruArray_V_4", "role": "ce0" }} , 
 	{ "name": "mruArray_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mruArray_V_4", "role": "we0" }} , 
 	{ "name": "mruArray_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mruArray_V_4", "role": "d0" }} , 
 	{ "name": "mruArray_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mruArray_V_4", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ReadMiss",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "i_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "dram_V", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "dram_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "dram_V_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "dram_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "dram_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "dram_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "dram_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "validArray_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_2_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_3_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_4_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_5_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_6_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_7_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataArray_0_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_2_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_3_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_4_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_5_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_6_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_7_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mruArray_V_4", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PLRUCache_mux_83_24_2_1_U42", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PLRUCache_mux_83_512_2_1_U43", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ReadMiss {
		i_addr_V {Type I LastRead 0 FirstWrite -1}
		dram_V {Type IO LastRead 13 FirstWrite 12}
		dram_V_offset {Type I LastRead 1 FirstWrite -1}
		valid_V {Type I LastRead 1 FirstWrite -1}
		tag_0_V_read {Type I LastRead 1 FirstWrite -1}
		tag_1_V_read {Type I LastRead 1 FirstWrite -1}
		tag_2_V_read {Type I LastRead 1 FirstWrite -1}
		tag_3_V_read {Type I LastRead 1 FirstWrite -1}
		tag_4_V_read {Type I LastRead 1 FirstWrite -1}
		tag_5_V_read {Type I LastRead 1 FirstWrite -1}
		tag_6_V_read {Type I LastRead 1 FirstWrite -1}
		tag_7_V_read {Type I LastRead 1 FirstWrite -1}
		validArray_V_4 {Type O LastRead -1 FirstWrite 17}
		tagArray_0_V {Type O LastRead -1 FirstWrite 17}
		tagArray_1_V {Type O LastRead -1 FirstWrite 17}
		tagArray_2_V {Type O LastRead -1 FirstWrite 17}
		tagArray_3_V {Type O LastRead -1 FirstWrite 17}
		tagArray_4_V {Type O LastRead -1 FirstWrite 17}
		tagArray_5_V {Type O LastRead -1 FirstWrite 17}
		tagArray_6_V {Type O LastRead -1 FirstWrite 17}
		tagArray_7_V {Type O LastRead -1 FirstWrite 17}
		dataArray_0_V {Type IO LastRead 9 FirstWrite 17}
		dataArray_1_V {Type IO LastRead 9 FirstWrite 17}
		dataArray_2_V {Type IO LastRead 9 FirstWrite 17}
		dataArray_3_V {Type IO LastRead 9 FirstWrite 17}
		dataArray_4_V {Type IO LastRead 9 FirstWrite 17}
		dataArray_5_V {Type IO LastRead 9 FirstWrite 17}
		dataArray_6_V {Type IO LastRead 9 FirstWrite 17}
		dataArray_7_V {Type IO LastRead 9 FirstWrite 17}
		mruArray_V_4 {Type IO LastRead 0 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	i_addr_V { ap_none {  { i_addr_V in_data 0 32 } } }
	dram_V { m_axi {  { m_axi_dram_V_AWVALID VALID 1 1 }  { m_axi_dram_V_AWREADY READY 0 1 }  { m_axi_dram_V_AWADDR ADDR 1 32 }  { m_axi_dram_V_AWID ID 1 1 }  { m_axi_dram_V_AWLEN LEN 1 32 }  { m_axi_dram_V_AWSIZE SIZE 1 3 }  { m_axi_dram_V_AWBURST BURST 1 2 }  { m_axi_dram_V_AWLOCK LOCK 1 2 }  { m_axi_dram_V_AWCACHE CACHE 1 4 }  { m_axi_dram_V_AWPROT PROT 1 3 }  { m_axi_dram_V_AWQOS QOS 1 4 }  { m_axi_dram_V_AWREGION REGION 1 4 }  { m_axi_dram_V_AWUSER USER 1 1 }  { m_axi_dram_V_WVALID VALID 1 1 }  { m_axi_dram_V_WREADY READY 0 1 }  { m_axi_dram_V_WDATA DATA 1 512 }  { m_axi_dram_V_WSTRB STRB 1 64 }  { m_axi_dram_V_WLAST LAST 1 1 }  { m_axi_dram_V_WID ID 1 1 }  { m_axi_dram_V_WUSER USER 1 1 }  { m_axi_dram_V_ARVALID VALID 1 1 }  { m_axi_dram_V_ARREADY READY 0 1 }  { m_axi_dram_V_ARADDR ADDR 1 32 }  { m_axi_dram_V_ARID ID 1 1 }  { m_axi_dram_V_ARLEN LEN 1 32 }  { m_axi_dram_V_ARSIZE SIZE 1 3 }  { m_axi_dram_V_ARBURST BURST 1 2 }  { m_axi_dram_V_ARLOCK LOCK 1 2 }  { m_axi_dram_V_ARCACHE CACHE 1 4 }  { m_axi_dram_V_ARPROT PROT 1 3 }  { m_axi_dram_V_ARQOS QOS 1 4 }  { m_axi_dram_V_ARREGION REGION 1 4 }  { m_axi_dram_V_ARUSER USER 1 1 }  { m_axi_dram_V_RVALID VALID 0 1 }  { m_axi_dram_V_RREADY READY 1 1 }  { m_axi_dram_V_RDATA DATA 0 512 }  { m_axi_dram_V_RLAST LAST 0 1 }  { m_axi_dram_V_RID ID 0 1 }  { m_axi_dram_V_RUSER USER 0 1 }  { m_axi_dram_V_RRESP RESP 0 2 }  { m_axi_dram_V_BVALID VALID 0 1 }  { m_axi_dram_V_BREADY READY 1 1 }  { m_axi_dram_V_BRESP RESP 0 2 }  { m_axi_dram_V_BID ID 0 1 }  { m_axi_dram_V_BUSER USER 0 1 } } }
	dram_V_offset { ap_none {  { dram_V_offset in_data 0 26 } } }
	valid_V { ap_none {  { valid_V in_data 0 8 } } }
	tag_0_V_read { ap_none {  { tag_0_V_read in_data 0 24 } } }
	tag_1_V_read { ap_none {  { tag_1_V_read in_data 0 24 } } }
	tag_2_V_read { ap_none {  { tag_2_V_read in_data 0 24 } } }
	tag_3_V_read { ap_none {  { tag_3_V_read in_data 0 24 } } }
	tag_4_V_read { ap_none {  { tag_4_V_read in_data 0 24 } } }
	tag_5_V_read { ap_none {  { tag_5_V_read in_data 0 24 } } }
	tag_6_V_read { ap_none {  { tag_6_V_read in_data 0 24 } } }
	tag_7_V_read { ap_none {  { tag_7_V_read in_data 0 24 } } }
	validArray_V_4 { ap_memory {  { validArray_V_4_address0 mem_address 1 8 }  { validArray_V_4_ce0 mem_ce 1 1 }  { validArray_V_4_we0 mem_we 1 1 }  { validArray_V_4_d0 mem_din 1 8 } } }
	tagArray_0_V { ap_memory {  { tagArray_0_V_address0 mem_address 1 8 }  { tagArray_0_V_ce0 mem_ce 1 1 }  { tagArray_0_V_we0 mem_we 1 1 }  { tagArray_0_V_d0 mem_din 1 24 } } }
	tagArray_1_V { ap_memory {  { tagArray_1_V_address0 mem_address 1 8 }  { tagArray_1_V_ce0 mem_ce 1 1 }  { tagArray_1_V_we0 mem_we 1 1 }  { tagArray_1_V_d0 mem_din 1 24 } } }
	tagArray_2_V { ap_memory {  { tagArray_2_V_address0 mem_address 1 8 }  { tagArray_2_V_ce0 mem_ce 1 1 }  { tagArray_2_V_we0 mem_we 1 1 }  { tagArray_2_V_d0 mem_din 1 24 } } }
	tagArray_3_V { ap_memory {  { tagArray_3_V_address0 mem_address 1 8 }  { tagArray_3_V_ce0 mem_ce 1 1 }  { tagArray_3_V_we0 mem_we 1 1 }  { tagArray_3_V_d0 mem_din 1 24 } } }
	tagArray_4_V { ap_memory {  { tagArray_4_V_address0 mem_address 1 8 }  { tagArray_4_V_ce0 mem_ce 1 1 }  { tagArray_4_V_we0 mem_we 1 1 }  { tagArray_4_V_d0 mem_din 1 24 } } }
	tagArray_5_V { ap_memory {  { tagArray_5_V_address0 mem_address 1 8 }  { tagArray_5_V_ce0 mem_ce 1 1 }  { tagArray_5_V_we0 mem_we 1 1 }  { tagArray_5_V_d0 mem_din 1 24 } } }
	tagArray_6_V { ap_memory {  { tagArray_6_V_address0 mem_address 1 8 }  { tagArray_6_V_ce0 mem_ce 1 1 }  { tagArray_6_V_we0 mem_we 1 1 }  { tagArray_6_V_d0 mem_din 1 24 } } }
	tagArray_7_V { ap_memory {  { tagArray_7_V_address0 mem_address 1 8 }  { tagArray_7_V_ce0 mem_ce 1 1 }  { tagArray_7_V_we0 mem_we 1 1 }  { tagArray_7_V_d0 mem_din 1 24 } } }
	dataArray_0_V { ap_memory {  { dataArray_0_V_address0 mem_address 1 8 }  { dataArray_0_V_ce0 mem_ce 1 1 }  { dataArray_0_V_we0 mem_we 1 1 }  { dataArray_0_V_d0 mem_din 1 512 }  { dataArray_0_V_q0 mem_dout 0 512 } } }
	dataArray_1_V { ap_memory {  { dataArray_1_V_address0 mem_address 1 8 }  { dataArray_1_V_ce0 mem_ce 1 1 }  { dataArray_1_V_we0 mem_we 1 1 }  { dataArray_1_V_d0 mem_din 1 512 }  { dataArray_1_V_q0 mem_dout 0 512 } } }
	dataArray_2_V { ap_memory {  { dataArray_2_V_address0 mem_address 1 8 }  { dataArray_2_V_ce0 mem_ce 1 1 }  { dataArray_2_V_we0 mem_we 1 1 }  { dataArray_2_V_d0 mem_din 1 512 }  { dataArray_2_V_q0 mem_dout 0 512 } } }
	dataArray_3_V { ap_memory {  { dataArray_3_V_address0 mem_address 1 8 }  { dataArray_3_V_ce0 mem_ce 1 1 }  { dataArray_3_V_we0 mem_we 1 1 }  { dataArray_3_V_d0 mem_din 1 512 }  { dataArray_3_V_q0 mem_dout 0 512 } } }
	dataArray_4_V { ap_memory {  { dataArray_4_V_address0 mem_address 1 8 }  { dataArray_4_V_ce0 mem_ce 1 1 }  { dataArray_4_V_we0 mem_we 1 1 }  { dataArray_4_V_d0 mem_din 1 512 }  { dataArray_4_V_q0 mem_dout 0 512 } } }
	dataArray_5_V { ap_memory {  { dataArray_5_V_address0 mem_address 1 8 }  { dataArray_5_V_ce0 mem_ce 1 1 }  { dataArray_5_V_we0 mem_we 1 1 }  { dataArray_5_V_d0 mem_din 1 512 }  { dataArray_5_V_q0 mem_dout 0 512 } } }
	dataArray_6_V { ap_memory {  { dataArray_6_V_address0 mem_address 1 8 }  { dataArray_6_V_ce0 mem_ce 1 1 }  { dataArray_6_V_we0 mem_we 1 1 }  { dataArray_6_V_d0 mem_din 1 512 }  { dataArray_6_V_q0 mem_dout 0 512 } } }
	dataArray_7_V { ap_memory {  { dataArray_7_V_address0 mem_address 1 8 }  { dataArray_7_V_ce0 mem_ce 1 1 }  { dataArray_7_V_we0 mem_we 1 1 }  { dataArray_7_V_d0 mem_din 1 512 }  { dataArray_7_V_q0 mem_dout 0 512 } } }
	mruArray_V_4 { ap_memory {  { mruArray_V_4_address0 mem_address 1 8 }  { mruArray_V_4_ce0 mem_ce 1 1 }  { mruArray_V_4_we0 mem_we 1 1 }  { mruArray_V_4_d0 mem_din 1 8 }  { mruArray_V_4_q0 mem_dout 0 8 } } }
}
