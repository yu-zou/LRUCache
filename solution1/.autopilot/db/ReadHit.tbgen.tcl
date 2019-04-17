set moduleName ReadHit
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
set C_modelName {ReadHit}
set C_modelType { int 512 }
set C_modelArgList {
	{ i_addr_V int 32 regular  }
	{ valid_V int 8 regular  }
	{ tag_0_V_read int 24 regular  }
	{ tag_1_V_read int 24 regular  }
	{ tag_2_V_read int 24 regular  }
	{ tag_3_V_read int 24 regular  }
	{ tag_4_V_read int 24 regular  }
	{ tag_5_V_read int 24 regular  }
	{ tag_6_V_read int 24 regular  }
	{ tag_7_V_read int 24 regular  }
	{ dataArray_0_V int 512 regular {array 256 { 1 3 } 1 1 }  }
	{ dataArray_1_V int 512 regular {array 256 { 1 3 } 1 1 }  }
	{ dataArray_2_V int 512 regular {array 256 { 1 3 } 1 1 }  }
	{ dataArray_3_V int 512 regular {array 256 { 1 3 } 1 1 }  }
	{ dataArray_4_V int 512 regular {array 256 { 1 3 } 1 1 }  }
	{ dataArray_5_V int 512 regular {array 256 { 1 3 } 1 1 }  }
	{ dataArray_6_V int 512 regular {array 256 { 1 3 } 1 1 }  }
	{ dataArray_7_V int 512 regular {array 256 { 1 3 } 1 1 }  }
	{ mruArray_V_6 int 8 regular {array 256 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "i_addr_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "valid_V", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "tag_0_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_1_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_2_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_3_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_4_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_5_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_6_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "tag_7_V_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "dataArray_0_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "dataArray_1_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "dataArray_2_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "dataArray_3_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "dataArray_4_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "dataArray_5_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "dataArray_6_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "dataArray_7_V", "interface" : "memory", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "mruArray_V_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512} ]}
# RTL Port declarations: 
set portNum 46
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ i_addr_V sc_in sc_lv 32 signal 0 } 
	{ valid_V sc_in sc_lv 8 signal 1 } 
	{ tag_0_V_read sc_in sc_lv 24 signal 2 } 
	{ tag_1_V_read sc_in sc_lv 24 signal 3 } 
	{ tag_2_V_read sc_in sc_lv 24 signal 4 } 
	{ tag_3_V_read sc_in sc_lv 24 signal 5 } 
	{ tag_4_V_read sc_in sc_lv 24 signal 6 } 
	{ tag_5_V_read sc_in sc_lv 24 signal 7 } 
	{ tag_6_V_read sc_in sc_lv 24 signal 8 } 
	{ tag_7_V_read sc_in sc_lv 24 signal 9 } 
	{ dataArray_0_V_address0 sc_out sc_lv 8 signal 10 } 
	{ dataArray_0_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ dataArray_0_V_q0 sc_in sc_lv 512 signal 10 } 
	{ dataArray_1_V_address0 sc_out sc_lv 8 signal 11 } 
	{ dataArray_1_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ dataArray_1_V_q0 sc_in sc_lv 512 signal 11 } 
	{ dataArray_2_V_address0 sc_out sc_lv 8 signal 12 } 
	{ dataArray_2_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ dataArray_2_V_q0 sc_in sc_lv 512 signal 12 } 
	{ dataArray_3_V_address0 sc_out sc_lv 8 signal 13 } 
	{ dataArray_3_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ dataArray_3_V_q0 sc_in sc_lv 512 signal 13 } 
	{ dataArray_4_V_address0 sc_out sc_lv 8 signal 14 } 
	{ dataArray_4_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ dataArray_4_V_q0 sc_in sc_lv 512 signal 14 } 
	{ dataArray_5_V_address0 sc_out sc_lv 8 signal 15 } 
	{ dataArray_5_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ dataArray_5_V_q0 sc_in sc_lv 512 signal 15 } 
	{ dataArray_6_V_address0 sc_out sc_lv 8 signal 16 } 
	{ dataArray_6_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ dataArray_6_V_q0 sc_in sc_lv 512 signal 16 } 
	{ dataArray_7_V_address0 sc_out sc_lv 8 signal 17 } 
	{ dataArray_7_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ dataArray_7_V_q0 sc_in sc_lv 512 signal 17 } 
	{ mruArray_V_6_address0 sc_out sc_lv 8 signal 18 } 
	{ mruArray_V_6_ce0 sc_out sc_logic 1 signal 18 } 
	{ mruArray_V_6_we0 sc_out sc_logic 1 signal 18 } 
	{ mruArray_V_6_d0 sc_out sc_lv 8 signal 18 } 
	{ mruArray_V_6_q0 sc_in sc_lv 8 signal 18 } 
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
 	{ "name": "valid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "valid_V", "role": "default" }} , 
 	{ "name": "tag_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_0_V_read", "role": "default" }} , 
 	{ "name": "tag_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_1_V_read", "role": "default" }} , 
 	{ "name": "tag_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_2_V_read", "role": "default" }} , 
 	{ "name": "tag_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_3_V_read", "role": "default" }} , 
 	{ "name": "tag_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_4_V_read", "role": "default" }} , 
 	{ "name": "tag_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_5_V_read", "role": "default" }} , 
 	{ "name": "tag_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_6_V_read", "role": "default" }} , 
 	{ "name": "tag_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tag_7_V_read", "role": "default" }} , 
 	{ "name": "dataArray_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_0_V", "role": "address0" }} , 
 	{ "name": "dataArray_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_0_V", "role": "ce0" }} , 
 	{ "name": "dataArray_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_0_V", "role": "q0" }} , 
 	{ "name": "dataArray_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_1_V", "role": "address0" }} , 
 	{ "name": "dataArray_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_1_V", "role": "ce0" }} , 
 	{ "name": "dataArray_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_1_V", "role": "q0" }} , 
 	{ "name": "dataArray_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_2_V", "role": "address0" }} , 
 	{ "name": "dataArray_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_2_V", "role": "ce0" }} , 
 	{ "name": "dataArray_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_2_V", "role": "q0" }} , 
 	{ "name": "dataArray_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_3_V", "role": "address0" }} , 
 	{ "name": "dataArray_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_3_V", "role": "ce0" }} , 
 	{ "name": "dataArray_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_3_V", "role": "q0" }} , 
 	{ "name": "dataArray_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_4_V", "role": "address0" }} , 
 	{ "name": "dataArray_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_4_V", "role": "ce0" }} , 
 	{ "name": "dataArray_4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_4_V", "role": "q0" }} , 
 	{ "name": "dataArray_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_5_V", "role": "address0" }} , 
 	{ "name": "dataArray_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_5_V", "role": "ce0" }} , 
 	{ "name": "dataArray_5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_5_V", "role": "q0" }} , 
 	{ "name": "dataArray_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_6_V", "role": "address0" }} , 
 	{ "name": "dataArray_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_6_V", "role": "ce0" }} , 
 	{ "name": "dataArray_6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_6_V", "role": "q0" }} , 
 	{ "name": "dataArray_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataArray_7_V", "role": "address0" }} , 
 	{ "name": "dataArray_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataArray_7_V", "role": "ce0" }} , 
 	{ "name": "dataArray_7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataArray_7_V", "role": "q0" }} , 
 	{ "name": "mruArray_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mruArray_V_6", "role": "address0" }} , 
 	{ "name": "mruArray_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mruArray_V_6", "role": "ce0" }} , 
 	{ "name": "mruArray_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mruArray_V_6", "role": "we0" }} , 
 	{ "name": "mruArray_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mruArray_V_6", "role": "d0" }} , 
 	{ "name": "mruArray_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mruArray_V_6", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PLRUCache_mux_83_512_2_1_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		mruArray_V_6 {Type IO LastRead 1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	i_addr_V { ap_none {  { i_addr_V in_data 0 32 } } }
	valid_V { ap_none {  { valid_V in_data 0 8 } } }
	tag_0_V_read { ap_none {  { tag_0_V_read in_data 0 24 } } }
	tag_1_V_read { ap_none {  { tag_1_V_read in_data 0 24 } } }
	tag_2_V_read { ap_none {  { tag_2_V_read in_data 0 24 } } }
	tag_3_V_read { ap_none {  { tag_3_V_read in_data 0 24 } } }
	tag_4_V_read { ap_none {  { tag_4_V_read in_data 0 24 } } }
	tag_5_V_read { ap_none {  { tag_5_V_read in_data 0 24 } } }
	tag_6_V_read { ap_none {  { tag_6_V_read in_data 0 24 } } }
	tag_7_V_read { ap_none {  { tag_7_V_read in_data 0 24 } } }
	dataArray_0_V { ap_memory {  { dataArray_0_V_address0 mem_address 1 8 }  { dataArray_0_V_ce0 mem_ce 1 1 }  { dataArray_0_V_q0 mem_dout 0 512 } } }
	dataArray_1_V { ap_memory {  { dataArray_1_V_address0 mem_address 1 8 }  { dataArray_1_V_ce0 mem_ce 1 1 }  { dataArray_1_V_q0 mem_dout 0 512 } } }
	dataArray_2_V { ap_memory {  { dataArray_2_V_address0 mem_address 1 8 }  { dataArray_2_V_ce0 mem_ce 1 1 }  { dataArray_2_V_q0 mem_dout 0 512 } } }
	dataArray_3_V { ap_memory {  { dataArray_3_V_address0 mem_address 1 8 }  { dataArray_3_V_ce0 mem_ce 1 1 }  { dataArray_3_V_q0 mem_dout 0 512 } } }
	dataArray_4_V { ap_memory {  { dataArray_4_V_address0 mem_address 1 8 }  { dataArray_4_V_ce0 mem_ce 1 1 }  { dataArray_4_V_q0 mem_dout 0 512 } } }
	dataArray_5_V { ap_memory {  { dataArray_5_V_address0 mem_address 1 8 }  { dataArray_5_V_ce0 mem_ce 1 1 }  { dataArray_5_V_q0 mem_dout 0 512 } } }
	dataArray_6_V { ap_memory {  { dataArray_6_V_address0 mem_address 1 8 }  { dataArray_6_V_ce0 mem_ce 1 1 }  { dataArray_6_V_q0 mem_dout 0 512 } } }
	dataArray_7_V { ap_memory {  { dataArray_7_V_address0 mem_address 1 8 }  { dataArray_7_V_ce0 mem_ce 1 1 }  { dataArray_7_V_q0 mem_dout 0 512 } } }
	mruArray_V_6 { ap_memory {  { mruArray_V_6_address0 mem_address 1 8 }  { mruArray_V_6_ce0 mem_ce 1 1 }  { mruArray_V_6_we0 mem_we 1 1 }  { mruArray_V_6_d0 mem_din 1 8 }  { mruArray_V_6_q0 mem_dout 0 8 } } }
}
