set moduleName PLRUCache
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
set C_modelName {PLRUCache}
set C_modelType { int 512 }
set C_modelArgList {
	{ dram int 512 regular {axi_master 2}  }
	{ i_addr_V int 32 regular  }
	{ i_wdata_V int 512 regular  }
	{ i_op int 1 regular  }
	{ dram_V int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dram", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "dram.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"offset": { "type": "dynamic","port_name": "dram_V"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "i_addr_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "i_addr.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "i_wdata_V", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "i_wdata.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "i_op", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "i_op","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dram_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512,"bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "agg.result.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_dram_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_dram_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_dram_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_dram_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_dram_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_dram_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_dram_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_dram_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_dram_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_dram_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_dram_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_dram_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_dram_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_dram_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_dram_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_dram_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_dram_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_dram_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_dram_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_dram_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_dram_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_dram_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_dram_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_dram_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_dram_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_dram_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_dram_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_dram_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_dram_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_dram_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_dram_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_dram_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_dram_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_dram_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_dram_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_dram_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_dram_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_dram_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_dram_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_dram_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_dram_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_dram_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_dram_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_dram_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_dram_BUSER sc_in sc_lv 1 signal 0 } 
	{ i_addr_V sc_in sc_lv 32 signal 1 } 
	{ i_wdata_V sc_in sc_lv 512 signal 2 } 
	{ i_op sc_in sc_logic 1 signal 3 } 
	{ dram_V sc_in sc_lv 32 signal 4 } 
	{ ap_return sc_out sc_lv 512 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_dram_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "AWVALID" }} , 
 	{ "name": "m_axi_dram_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "AWREADY" }} , 
 	{ "name": "m_axi_dram_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dram", "role": "AWADDR" }} , 
 	{ "name": "m_axi_dram_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "AWID" }} , 
 	{ "name": "m_axi_dram_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dram", "role": "AWLEN" }} , 
 	{ "name": "m_axi_dram_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dram", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_dram_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram", "role": "AWBURST" }} , 
 	{ "name": "m_axi_dram_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_dram_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_dram_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dram", "role": "AWPROT" }} , 
 	{ "name": "m_axi_dram_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram", "role": "AWQOS" }} , 
 	{ "name": "m_axi_dram_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram", "role": "AWREGION" }} , 
 	{ "name": "m_axi_dram_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "AWUSER" }} , 
 	{ "name": "m_axi_dram_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "WVALID" }} , 
 	{ "name": "m_axi_dram_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "WREADY" }} , 
 	{ "name": "m_axi_dram_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dram", "role": "WDATA" }} , 
 	{ "name": "m_axi_dram_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dram", "role": "WSTRB" }} , 
 	{ "name": "m_axi_dram_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "WLAST" }} , 
 	{ "name": "m_axi_dram_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "WID" }} , 
 	{ "name": "m_axi_dram_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "WUSER" }} , 
 	{ "name": "m_axi_dram_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "ARVALID" }} , 
 	{ "name": "m_axi_dram_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "ARREADY" }} , 
 	{ "name": "m_axi_dram_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dram", "role": "ARADDR" }} , 
 	{ "name": "m_axi_dram_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "ARID" }} , 
 	{ "name": "m_axi_dram_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dram", "role": "ARLEN" }} , 
 	{ "name": "m_axi_dram_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dram", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_dram_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram", "role": "ARBURST" }} , 
 	{ "name": "m_axi_dram_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_dram_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_dram_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dram", "role": "ARPROT" }} , 
 	{ "name": "m_axi_dram_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram", "role": "ARQOS" }} , 
 	{ "name": "m_axi_dram_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dram", "role": "ARREGION" }} , 
 	{ "name": "m_axi_dram_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "ARUSER" }} , 
 	{ "name": "m_axi_dram_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "RVALID" }} , 
 	{ "name": "m_axi_dram_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "RREADY" }} , 
 	{ "name": "m_axi_dram_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dram", "role": "RDATA" }} , 
 	{ "name": "m_axi_dram_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "RLAST" }} , 
 	{ "name": "m_axi_dram_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "RID" }} , 
 	{ "name": "m_axi_dram_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "RUSER" }} , 
 	{ "name": "m_axi_dram_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram", "role": "RRESP" }} , 
 	{ "name": "m_axi_dram_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "BVALID" }} , 
 	{ "name": "m_axi_dram_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "BREADY" }} , 
 	{ "name": "m_axi_dram_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dram", "role": "BRESP" }} , 
 	{ "name": "m_axi_dram_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "BID" }} , 
 	{ "name": "m_axi_dram_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dram", "role": "BUSER" }} , 
 	{ "name": "i_addr_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i_addr_V", "role": "default" }} , 
 	{ "name": "i_wdata_V", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "i_wdata_V", "role": "default" }} , 
 	{ "name": "i_op", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "i_op", "role": "default" }} , 
 	{ "name": "dram_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dram_V", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "23", "26", "28"],
		"CDFG" : "PLRUCache",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ReadMiss_fu_274"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_WriteMiss_fu_328"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ReadHit_fu_382"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_WriteHit_fu_415"}],
		"Port" : [
			{"Name" : "dram", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "dram_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "dram_V"}]},
			{"Name" : "i_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_wdata_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_op", "Type" : "None", "Direction" : "I"},
			{"Name" : "dram_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "validArray_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "validArray_V_4"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "validArray_V_2"}]},
			{"Name" : "tagArray_V_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "tagArray_0_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "tagArray_0_V"}]},
			{"Name" : "tagArray_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "tagArray_1_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "tagArray_1_V"}]},
			{"Name" : "tagArray_V_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "tagArray_2_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "tagArray_2_V"}]},
			{"Name" : "tagArray_V_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "tagArray_3_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "tagArray_3_V"}]},
			{"Name" : "tagArray_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "tagArray_4_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "tagArray_4_V"}]},
			{"Name" : "tagArray_V_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "tagArray_5_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "tagArray_5_V"}]},
			{"Name" : "tagArray_V_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "tagArray_6_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "tagArray_6_V"}]},
			{"Name" : "tagArray_V_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "tagArray_7_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "tagArray_7_V"}]},
			{"Name" : "dataArray_V_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "dataArray_0_V"},
					{"ID" : "28", "SubInstance" : "grp_WriteHit_fu_415", "Port" : "dataArray_0_V"},
					{"ID" : "26", "SubInstance" : "grp_ReadHit_fu_382", "Port" : "dataArray_0_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "dataArray_V_0"}]},
			{"Name" : "dataArray_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "dataArray_1_V"},
					{"ID" : "28", "SubInstance" : "grp_WriteHit_fu_415", "Port" : "dataArray_1_V"},
					{"ID" : "26", "SubInstance" : "grp_ReadHit_fu_382", "Port" : "dataArray_1_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "dataArray_V_1"}]},
			{"Name" : "dataArray_V_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "dataArray_2_V"},
					{"ID" : "28", "SubInstance" : "grp_WriteHit_fu_415", "Port" : "dataArray_2_V"},
					{"ID" : "26", "SubInstance" : "grp_ReadHit_fu_382", "Port" : "dataArray_2_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "dataArray_V_2"}]},
			{"Name" : "dataArray_V_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "dataArray_3_V"},
					{"ID" : "28", "SubInstance" : "grp_WriteHit_fu_415", "Port" : "dataArray_3_V"},
					{"ID" : "26", "SubInstance" : "grp_ReadHit_fu_382", "Port" : "dataArray_3_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "dataArray_V_3"}]},
			{"Name" : "dataArray_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "dataArray_4_V"},
					{"ID" : "28", "SubInstance" : "grp_WriteHit_fu_415", "Port" : "dataArray_4_V"},
					{"ID" : "26", "SubInstance" : "grp_ReadHit_fu_382", "Port" : "dataArray_4_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "dataArray_V_4"}]},
			{"Name" : "dataArray_V_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "dataArray_5_V"},
					{"ID" : "28", "SubInstance" : "grp_WriteHit_fu_415", "Port" : "dataArray_5_V"},
					{"ID" : "26", "SubInstance" : "grp_ReadHit_fu_382", "Port" : "dataArray_5_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "dataArray_V_5"}]},
			{"Name" : "dataArray_V_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "dataArray_6_V"},
					{"ID" : "28", "SubInstance" : "grp_WriteHit_fu_415", "Port" : "dataArray_6_V"},
					{"ID" : "26", "SubInstance" : "grp_ReadHit_fu_382", "Port" : "dataArray_6_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "dataArray_V_6"}]},
			{"Name" : "dataArray_V_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "dataArray_7_V"},
					{"ID" : "28", "SubInstance" : "grp_WriteHit_fu_415", "Port" : "dataArray_7_V"},
					{"ID" : "26", "SubInstance" : "grp_ReadHit_fu_382", "Port" : "dataArray_7_V"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "dataArray_V_7"}]},
			{"Name" : "mruArray_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_ReadMiss_fu_274", "Port" : "mruArray_V_4"},
					{"ID" : "28", "SubInstance" : "grp_WriteHit_fu_415", "Port" : "mruArray_V_2"},
					{"ID" : "26", "SubInstance" : "grp_ReadHit_fu_382", "Port" : "mruArray_V_6"},
					{"ID" : "23", "SubInstance" : "grp_WriteMiss_fu_328", "Port" : "mruArray_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.validArray_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tagArray_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tagArray_V_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tagArray_V_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tagArray_V_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tagArray_V_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tagArray_V_5_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tagArray_V_6_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tagArray_V_7_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataArray_V_0_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataArray_V_1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataArray_V_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataArray_V_3_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataArray_V_4_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataArray_V_5_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataArray_V_6_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataArray_V_7_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mruArray_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PLRUCache_dram_m_axi_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ReadMiss_fu_274", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ReadMiss_fu_274.PLRUCache_mux_83_24_2_1_U42", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ReadMiss_fu_274.PLRUCache_mux_83_512_2_1_U43", "Parent" : "20"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_WriteMiss_fu_328", "Parent" : "0", "Child" : ["24", "25"],
		"CDFG" : "WriteMiss",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "i_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_wdata_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "dram_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
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
			{"Name" : "validArray_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_2_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_3_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_4_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_5_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_6_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tagArray_7_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mruArray_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dataArray_V_7", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_WriteMiss_fu_328.PLRUCache_mux_83_24_2_1_U75", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_WriteMiss_fu_328.PLRUCache_mux_83_512_2_1_U76", "Parent" : "23"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ReadHit_fu_382", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "ReadHit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "i_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataArray_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataArray_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataArray_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataArray_3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataArray_4_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataArray_5_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataArray_6_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataArray_7_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mruArray_V_6", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ReadHit_fu_382.PLRUCache_mux_83_512_2_1_U1", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_WriteHit_fu_415", "Parent" : "0",
		"CDFG" : "WriteHit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "i_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_wdata_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tag_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataArray_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataArray_1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataArray_2_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataArray_3_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataArray_4_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataArray_5_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataArray_6_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataArray_7_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mruArray_V_2", "Type" : "Memory", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	PLRUCache {
		dram {Type IO LastRead 13 FirstWrite 5}
		i_addr_V {Type I LastRead 0 FirstWrite -1}
		i_wdata_V {Type I LastRead 2 FirstWrite -1}
		i_op {Type I LastRead 2 FirstWrite -1}
		dram_V {Type I LastRead 2 FirstWrite -1}
		validArray_V {Type IO LastRead -1 FirstWrite -1}
		tagArray_V_0 {Type IO LastRead -1 FirstWrite -1}
		tagArray_V_1 {Type IO LastRead -1 FirstWrite -1}
		tagArray_V_2 {Type IO LastRead -1 FirstWrite -1}
		tagArray_V_3 {Type IO LastRead -1 FirstWrite -1}
		tagArray_V_4 {Type IO LastRead -1 FirstWrite -1}
		tagArray_V_5 {Type IO LastRead -1 FirstWrite -1}
		tagArray_V_6 {Type IO LastRead -1 FirstWrite -1}
		tagArray_V_7 {Type IO LastRead -1 FirstWrite -1}
		dataArray_V_0 {Type IO LastRead -1 FirstWrite -1}
		dataArray_V_1 {Type IO LastRead -1 FirstWrite -1}
		dataArray_V_2 {Type IO LastRead -1 FirstWrite -1}
		dataArray_V_3 {Type IO LastRead -1 FirstWrite -1}
		dataArray_V_4 {Type IO LastRead -1 FirstWrite -1}
		dataArray_V_5 {Type IO LastRead -1 FirstWrite -1}
		dataArray_V_6 {Type IO LastRead -1 FirstWrite -1}
		dataArray_V_7 {Type IO LastRead -1 FirstWrite -1}
		mruArray_V {Type IO LastRead -1 FirstWrite -1}}
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
		mruArray_V_4 {Type IO LastRead 0 FirstWrite 17}}
	WriteMiss {
		i_addr_V {Type I LastRead 0 FirstWrite -1}
		i_wdata_V {Type I LastRead 1 FirstWrite -1}
		dram_V {Type O LastRead 6 FirstWrite 5}
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
		validArray_V_2 {Type O LastRead -1 FirstWrite 10}
		tagArray_0_V {Type O LastRead -1 FirstWrite 10}
		tagArray_1_V {Type O LastRead -1 FirstWrite 10}
		tagArray_2_V {Type O LastRead -1 FirstWrite 10}
		tagArray_3_V {Type O LastRead -1 FirstWrite 10}
		tagArray_4_V {Type O LastRead -1 FirstWrite 10}
		tagArray_5_V {Type O LastRead -1 FirstWrite 10}
		tagArray_6_V {Type O LastRead -1 FirstWrite 10}
		tagArray_7_V {Type O LastRead -1 FirstWrite 10}
		mruArray_V {Type IO LastRead 0 FirstWrite 10}
		dataArray_V_0 {Type IO LastRead 2 FirstWrite 10}
		dataArray_V_1 {Type IO LastRead 2 FirstWrite 10}
		dataArray_V_2 {Type IO LastRead 2 FirstWrite 10}
		dataArray_V_3 {Type IO LastRead 2 FirstWrite 10}
		dataArray_V_4 {Type IO LastRead 2 FirstWrite 10}
		dataArray_V_5 {Type IO LastRead 2 FirstWrite 10}
		dataArray_V_6 {Type IO LastRead 2 FirstWrite 10}
		dataArray_V_7 {Type IO LastRead 2 FirstWrite 10}}
	ReadHit {
		i_addr_V {Type I LastRead 0 FirstWrite -1}
		valid_V {Type I LastRead 0 FirstWrite -1}
		tag_0_V_read {Type I LastRead 0 FirstWrite -1}
		tag_1_V_read {Type I LastRead 0 FirstWrite -1}
		tag_2_V_read {Type I LastRead 0 FirstWrite -1}
		tag_3_V_read {Type I LastRead 0 FirstWrite -1}
		tag_4_V_read {Type I LastRead 0 FirstWrite -1}
		tag_5_V_read {Type I LastRead 0 FirstWrite -1}
		tag_6_V_read {Type I LastRead 0 FirstWrite -1}
		tag_7_V_read {Type I LastRead 0 FirstWrite -1}
		dataArray_0_V {Type I LastRead 0 FirstWrite -1}
		dataArray_1_V {Type I LastRead 0 FirstWrite -1}
		dataArray_2_V {Type I LastRead 0 FirstWrite -1}
		dataArray_3_V {Type I LastRead 0 FirstWrite -1}
		dataArray_4_V {Type I LastRead 0 FirstWrite -1}
		dataArray_5_V {Type I LastRead 0 FirstWrite -1}
		dataArray_6_V {Type I LastRead 0 FirstWrite -1}
		dataArray_7_V {Type I LastRead 0 FirstWrite -1}
		mruArray_V_6 {Type IO LastRead 1 FirstWrite 2}}
	WriteHit {
		i_addr_V {Type I LastRead 0 FirstWrite -1}
		i_wdata_V {Type I LastRead 1 FirstWrite -1}
		valid_V {Type I LastRead 0 FirstWrite -1}
		tag_0_V_read {Type I LastRead 0 FirstWrite -1}
		tag_1_V_read {Type I LastRead 0 FirstWrite -1}
		tag_2_V_read {Type I LastRead 0 FirstWrite -1}
		tag_3_V_read {Type I LastRead 0 FirstWrite -1}
		tag_4_V_read {Type I LastRead 0 FirstWrite -1}
		tag_5_V_read {Type I LastRead 0 FirstWrite -1}
		tag_6_V_read {Type I LastRead 0 FirstWrite -1}
		tag_7_V_read {Type I LastRead 0 FirstWrite -1}
		dataArray_0_V {Type O LastRead -1 FirstWrite 1}
		dataArray_1_V {Type O LastRead -1 FirstWrite 1}
		dataArray_2_V {Type O LastRead -1 FirstWrite 1}
		dataArray_3_V {Type O LastRead -1 FirstWrite 1}
		dataArray_4_V {Type O LastRead -1 FirstWrite 1}
		dataArray_5_V {Type O LastRead -1 FirstWrite 1}
		dataArray_6_V {Type O LastRead -1 FirstWrite 1}
		dataArray_7_V {Type O LastRead -1 FirstWrite 1}
		mruArray_V_2 {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "22"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dram { m_axi {  { m_axi_dram_AWVALID VALID 1 1 }  { m_axi_dram_AWREADY READY 0 1 }  { m_axi_dram_AWADDR ADDR 1 32 }  { m_axi_dram_AWID ID 1 1 }  { m_axi_dram_AWLEN LEN 1 8 }  { m_axi_dram_AWSIZE SIZE 1 3 }  { m_axi_dram_AWBURST BURST 1 2 }  { m_axi_dram_AWLOCK LOCK 1 2 }  { m_axi_dram_AWCACHE CACHE 1 4 }  { m_axi_dram_AWPROT PROT 1 3 }  { m_axi_dram_AWQOS QOS 1 4 }  { m_axi_dram_AWREGION REGION 1 4 }  { m_axi_dram_AWUSER USER 1 1 }  { m_axi_dram_WVALID VALID 1 1 }  { m_axi_dram_WREADY READY 0 1 }  { m_axi_dram_WDATA DATA 1 512 }  { m_axi_dram_WSTRB STRB 1 64 }  { m_axi_dram_WLAST LAST 1 1 }  { m_axi_dram_WID ID 1 1 }  { m_axi_dram_WUSER USER 1 1 }  { m_axi_dram_ARVALID VALID 1 1 }  { m_axi_dram_ARREADY READY 0 1 }  { m_axi_dram_ARADDR ADDR 1 32 }  { m_axi_dram_ARID ID 1 1 }  { m_axi_dram_ARLEN LEN 1 8 }  { m_axi_dram_ARSIZE SIZE 1 3 }  { m_axi_dram_ARBURST BURST 1 2 }  { m_axi_dram_ARLOCK LOCK 1 2 }  { m_axi_dram_ARCACHE CACHE 1 4 }  { m_axi_dram_ARPROT PROT 1 3 }  { m_axi_dram_ARQOS QOS 1 4 }  { m_axi_dram_ARREGION REGION 1 4 }  { m_axi_dram_ARUSER USER 1 1 }  { m_axi_dram_RVALID VALID 0 1 }  { m_axi_dram_RREADY READY 1 1 }  { m_axi_dram_RDATA DATA 0 512 }  { m_axi_dram_RLAST LAST 0 1 }  { m_axi_dram_RID ID 0 1 }  { m_axi_dram_RUSER USER 0 1 }  { m_axi_dram_RRESP RESP 0 2 }  { m_axi_dram_BVALID VALID 0 1 }  { m_axi_dram_BREADY READY 1 1 }  { m_axi_dram_BRESP RESP 0 2 }  { m_axi_dram_BID ID 0 1 }  { m_axi_dram_BUSER USER 0 1 } } }
	i_addr_V { ap_none {  { i_addr_V in_data 0 32 } } }
	i_wdata_V { ap_none {  { i_wdata_V in_data 0 512 } } }
	i_op { ap_none {  { i_op in_data 0 1 } } }
	dram_V { ap_none {  { dram_V in_data 0 32 } } }
}

set busDeadlockParameterList { 
	{ dram { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ dram 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ dram 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
