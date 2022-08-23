set moduleName cordic
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {cordic}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_theta_V_V int 10 regular {fifo 0 volatile }  }
	{ out_s_V_V int 10 regular {fifo 1 volatile }  }
	{ out_c_V_V int 10 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_theta_V_V", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY", "bitSlice":[{"low":0,"up":9,"cElement": [{"cName": "in_theta.V.V","cData": "int10","bit_use": { "low": 0,"up": 9},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_s_V_V", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":9,"cElement": [{"cName": "out_s.V.V","cData": "int10","bit_use": { "low": 0,"up": 9},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_c_V_V", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":9,"cElement": [{"cName": "out_c.V.V","cData": "int10","bit_use": { "low": 0,"up": 9},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ in_theta_V_V_dout sc_in sc_lv 10 signal 0 } 
	{ in_theta_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_theta_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_s_V_V_din sc_out sc_lv 10 signal 1 } 
	{ out_s_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_s_V_V_write sc_out sc_logic 1 signal 1 } 
	{ out_c_V_V_din sc_out sc_lv 10 signal 2 } 
	{ out_c_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ out_c_V_V_write sc_out sc_logic 1 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "in_theta_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "in_theta_V_V", "role": "dout" }} , 
 	{ "name": "in_theta_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_theta_V_V", "role": "empty_n" }} , 
 	{ "name": "in_theta_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_theta_V_V", "role": "read" }} , 
 	{ "name": "out_s_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out_s_V_V", "role": "din" }} , 
 	{ "name": "out_s_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_s_V_V", "role": "full_n" }} , 
 	{ "name": "out_s_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_s_V_V", "role": "write" }} , 
 	{ "name": "out_c_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out_c_V_V", "role": "din" }} , 
 	{ "name": "out_c_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_c_V_V", "role": "full_n" }} , 
 	{ "name": "out_c_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_c_V_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77"],
		"CDFG" : "cordic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_ap_fixed_base_U0", "ReadyCount" : "Block_ap_fixed_base_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "one_stage20_U0", "ReadyCount" : "one_stage20_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "16", "Name" : "one_stage34_U0"},
			{"ID" : "17", "Name" : "Block_ap_fixed_base_1_U0"}],
		"Port" : [
			{"Name" : "in_theta_V_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "one_stage20_U0", "Port" : "s_current_theta_V_V"}]},
			{"Name" : "out_s_V_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "one_stage34_U0", "Port" : "s_output_sin_V_V"}]},
			{"Name" : "out_c_V_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "one_stage34_U0", "Port" : "s_output_cos_V_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_ap_fixed_base_U0", "Parent" : "0",
		"CDFG" : "Block_ap_fixed_base_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Stage0_COS_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "Stage0_COS_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Stage0_Sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "Stage0_Sin_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage20_U0", "Parent" : "0",
		"CDFG" : "one_stage20",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage21_U0", "Parent" : "0",
		"CDFG" : "one_stage21",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_one_stabkb_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage22_U0", "Parent" : "0",
		"CDFG" : "one_stage22",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_one_stacud_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage23_U0", "Parent" : "0",
		"CDFG" : "one_stage23",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_one_stadEe_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage24_U0", "Parent" : "0",
		"CDFG" : "one_stage24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "5",
		"StartFifo" : "start_for_one_staeOg_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage25_U0", "Parent" : "0",
		"CDFG" : "one_stage25",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "6",
		"StartFifo" : "start_for_one_stafYi_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage26_U0", "Parent" : "0",
		"CDFG" : "one_stage26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "7",
		"StartFifo" : "start_for_one_stag8j_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage27_U0", "Parent" : "0",
		"CDFG" : "one_stage27",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "8",
		"StartFifo" : "start_for_one_stahbi_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage28_U0", "Parent" : "0",
		"CDFG" : "one_stage28",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "9",
		"StartFifo" : "start_for_one_staibs_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage29_U0", "Parent" : "0",
		"CDFG" : "one_stage29",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "10",
		"StartFifo" : "start_for_one_stajbC_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage30_U0", "Parent" : "0",
		"CDFG" : "one_stage30",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "11",
		"StartFifo" : "start_for_one_stakbM_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage31_U0", "Parent" : "0",
		"CDFG" : "one_stage31",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "12",
		"StartFifo" : "start_for_one_stalbW_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "54",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "55",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage32_U0", "Parent" : "0",
		"CDFG" : "one_stage32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "13",
		"StartFifo" : "start_for_one_stamb6_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "54",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "13", "DependentChan" : "55",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "56",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "57",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "58",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage33_U0", "Parent" : "0",
		"CDFG" : "one_stage33",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "14",
		"StartFifo" : "start_for_one_stancg_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "56",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "57",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "58",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "59",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_stage34_U0", "Parent" : "0",
		"CDFG" : "one_stage34",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "15",
		"StartFifo" : "start_for_one_staocq_U",
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "59",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_ap_fixed_base_1_U0", "Parent" : "0",
		"CDFG" : "Block_ap_fixed_base_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "16",
		"StartFifo" : "start_for_Block_apcA_U",
		"Port" : [
			{"Name" : "Theta16_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "Theta16_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage0_COS_V_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage0_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_COS_V_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta2_V_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_COS_V_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta3_V_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_COS_V_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta4_V_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_COS_V_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta5_V_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_COS_V_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta6_V_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_COS_V_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta7_V_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_COS_V_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta8_V_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_COS_V_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta9_V_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_COS_V_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta10_V_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage10_COS_V_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage10_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta11_V_V_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage11_COS_V_V_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage11_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta12_V_V_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage12_COS_V_V_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage12_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta13_V_V_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage13_COS_V_V_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage13_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta14_V_V_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage14_COS_V_V_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage14_Sin_V_V_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta15_V_V_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Theta16_V_V_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_stabkb_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_stacud_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_stadEe_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_staeOg_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_stafYi_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_stag8j_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_stahbi_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_staibs_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_stajbC_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_stakbM_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_stalbW_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_stamb6_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_stancg_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_one_staocq_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_apcA_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cordic {
		in_theta_V_V {Type I LastRead 0 FirstWrite -1}
		out_s_V_V {Type O LastRead -1 FirstWrite 1}
		out_c_V_V {Type O LastRead -1 FirstWrite 1}}
	Block_ap_fixed_base_s {
		Stage0_COS_V_V {Type O LastRead -1 FirstWrite 0}
		Stage0_Sin_V_V {Type O LastRead -1 FirstWrite 0}}
	one_stage20 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage21 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage22 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage23 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage24 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage25 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage26 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage27 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage28 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage29 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage30 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage31 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage32 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage33 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	one_stage34 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}
	Block_ap_fixed_base_1 {
		Theta16_V_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "31", "Max" : "31"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_theta_V_V { ap_fifo {  { in_theta_V_V_dout fifo_data 0 10 }  { in_theta_V_V_empty_n fifo_status 0 1 }  { in_theta_V_V_read fifo_update 1 1 } } }
	out_s_V_V { ap_fifo {  { out_s_V_V_din fifo_data 1 10 }  { out_s_V_V_full_n fifo_status 0 1 }  { out_s_V_V_write fifo_update 1 1 } } }
	out_c_V_V { ap_fifo {  { out_c_V_V_din fifo_data 1 10 }  { out_c_V_V_full_n fifo_status 0 1 }  { out_c_V_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	in_theta_V_V { fifo_read 1 no_conditional }
	out_s_V_V { fifo_write 1 no_conditional }
	out_c_V_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
