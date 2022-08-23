set moduleName histogram
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {histogram}
set C_modelType { void 0 }
set C_modelArgList {
	{ inputA int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ inputB int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ hist int 32 regular {array 544 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inputA", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inputB", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hist", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ inputA_address0 sc_out sc_lv 9 signal 0 } 
	{ inputA_ce0 sc_out sc_logic 1 signal 0 } 
	{ inputA_d0 sc_out sc_lv 32 signal 0 } 
	{ inputA_q0 sc_in sc_lv 32 signal 0 } 
	{ inputA_we0 sc_out sc_logic 1 signal 0 } 
	{ inputA_address1 sc_out sc_lv 9 signal 0 } 
	{ inputA_ce1 sc_out sc_logic 1 signal 0 } 
	{ inputA_d1 sc_out sc_lv 32 signal 0 } 
	{ inputA_q1 sc_in sc_lv 32 signal 0 } 
	{ inputA_we1 sc_out sc_logic 1 signal 0 } 
	{ inputB_address0 sc_out sc_lv 9 signal 1 } 
	{ inputB_ce0 sc_out sc_logic 1 signal 1 } 
	{ inputB_d0 sc_out sc_lv 32 signal 1 } 
	{ inputB_q0 sc_in sc_lv 32 signal 1 } 
	{ inputB_we0 sc_out sc_logic 1 signal 1 } 
	{ inputB_address1 sc_out sc_lv 9 signal 1 } 
	{ inputB_ce1 sc_out sc_logic 1 signal 1 } 
	{ inputB_d1 sc_out sc_lv 32 signal 1 } 
	{ inputB_q1 sc_in sc_lv 32 signal 1 } 
	{ inputB_we1 sc_out sc_logic 1 signal 1 } 
	{ hist_address0 sc_out sc_lv 10 signal 2 } 
	{ hist_ce0 sc_out sc_logic 1 signal 2 } 
	{ hist_d0 sc_out sc_lv 32 signal 2 } 
	{ hist_q0 sc_in sc_lv 32 signal 2 } 
	{ hist_we0 sc_out sc_logic 1 signal 2 } 
	{ hist_address1 sc_out sc_lv 10 signal 2 } 
	{ hist_ce1 sc_out sc_logic 1 signal 2 } 
	{ hist_d1 sc_out sc_lv 32 signal 2 } 
	{ hist_q1 sc_in sc_lv 32 signal 2 } 
	{ hist_we1 sc_out sc_logic 1 signal 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "inputA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "inputA", "role": "address0" }} , 
 	{ "name": "inputA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputA", "role": "ce0" }} , 
 	{ "name": "inputA_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputA", "role": "d0" }} , 
 	{ "name": "inputA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputA", "role": "q0" }} , 
 	{ "name": "inputA_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputA", "role": "we0" }} , 
 	{ "name": "inputA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "inputA", "role": "address1" }} , 
 	{ "name": "inputA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputA", "role": "ce1" }} , 
 	{ "name": "inputA_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputA", "role": "d1" }} , 
 	{ "name": "inputA_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputA", "role": "q1" }} , 
 	{ "name": "inputA_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputA", "role": "we1" }} , 
 	{ "name": "inputB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "inputB", "role": "address0" }} , 
 	{ "name": "inputB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputB", "role": "ce0" }} , 
 	{ "name": "inputB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputB", "role": "d0" }} , 
 	{ "name": "inputB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputB", "role": "q0" }} , 
 	{ "name": "inputB_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputB", "role": "we0" }} , 
 	{ "name": "inputB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "inputB", "role": "address1" }} , 
 	{ "name": "inputB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputB", "role": "ce1" }} , 
 	{ "name": "inputB_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputB", "role": "d1" }} , 
 	{ "name": "inputB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputB", "role": "q1" }} , 
 	{ "name": "inputB_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputB", "role": "we1" }} , 
 	{ "name": "hist_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "hist", "role": "address0" }} , 
 	{ "name": "hist_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist", "role": "ce0" }} , 
 	{ "name": "hist_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hist", "role": "d0" }} , 
 	{ "name": "hist_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hist", "role": "q0" }} , 
 	{ "name": "hist_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist", "role": "we0" }} , 
 	{ "name": "hist_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "hist", "role": "address1" }} , 
 	{ "name": "hist_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist", "role": "ce1" }} , 
 	{ "name": "hist_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hist", "role": "d1" }} , 
 	{ "name": "hist_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hist", "role": "q1" }} , 
 	{ "name": "hist_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist", "role": "we1" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "8", "13"],
		"CDFG" : "histogram",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1066", "EstimateLatencyMax" : "1066",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "histogram_map3_U0"},
			{"ID" : "8", "Name" : "histogram_map_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "histogram_reduce_U0"}],
		"Port" : [
			{"Name" : "inputA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "histogram_map3_U0", "Port" : "inputA"}]},
			{"Name" : "inputB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "histogram_map_U0", "Port" : "inputA"}]},
			{"Name" : "hist", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "histogram_reduce_U0", "Port" : "hist"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hist1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hist2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.histogram_map3_U0", "Parent" : "0", "Child" : ["4", "6"],
		"CDFG" : "histogram_map3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1066", "EstimateLatencyMax" : "1066",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "inputA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_histogram_map3_Pipeline_VITIS_LOOP_10_2_fu_63", "Port" : "inputA", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "hist", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "13", "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_histogram_map3_Pipeline_VITIS_LOOP_4_1_fu_57", "Port" : "hist", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_histogram_map3_Pipeline_VITIS_LOOP_10_2_fu_63", "Port" : "hist", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.histogram_map3_U0.grp_histogram_map3_Pipeline_VITIS_LOOP_4_1_fu_57", "Parent" : "3", "Child" : ["5"],
		"CDFG" : "histogram_map3_Pipeline_VITIS_LOOP_4_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "546", "EstimateLatencyMax" : "546",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "hist", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_4_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.histogram_map3_U0.grp_histogram_map3_Pipeline_VITIS_LOOP_4_1_fu_57.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.histogram_map3_U0.grp_histogram_map3_Pipeline_VITIS_LOOP_10_2_fu_63", "Parent" : "3", "Child" : ["7"],
		"CDFG" : "histogram_map3_Pipeline_VITIS_LOOP_10_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "516", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_36", "FromFinalSV" : "2", "FromAddress" : "hist_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_39", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_41", "ToFinalSV" : "3", "ToAddress" : "hist_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(histogram_parallel.cpp:2:51)", "Type" : "RAW"}],
		"Port" : [
			{"Name" : "old", "Type" : "None", "Direction" : "I"},
			{"Name" : "inputA", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hist", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "old_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_10_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.histogram_map3_U0.grp_histogram_map3_Pipeline_VITIS_LOOP_10_2_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.histogram_map_U0", "Parent" : "0", "Child" : ["9", "11"],
		"CDFG" : "histogram_map",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1066", "EstimateLatencyMax" : "1066",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "inputA", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63", "Port" : "inputA", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "hist", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "13", "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63", "Port" : "hist", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "9", "SubInstance" : "grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57", "Port" : "hist", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.histogram_map_U0.grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57", "Parent" : "8", "Child" : ["10"],
		"CDFG" : "histogram_map_Pipeline_VITIS_LOOP_4_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "546", "EstimateLatencyMax" : "546",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "hist", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_4_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.histogram_map_U0.grp_histogram_map_Pipeline_VITIS_LOOP_4_1_fu_57.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.histogram_map_U0.grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63", "Parent" : "8", "Child" : ["12"],
		"CDFG" : "histogram_map_Pipeline_VITIS_LOOP_10_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "516", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_36", "FromFinalSV" : "2", "FromAddress" : "hist_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_39", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_41", "ToFinalSV" : "3", "ToAddress" : "hist_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(histogram_parallel.cpp:2:51)", "Type" : "RAW"}],
		"Port" : [
			{"Name" : "old", "Type" : "None", "Direction" : "I"},
			{"Name" : "inputA", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "hist", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "old_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_10_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.histogram_map_U0.grp_histogram_map_Pipeline_VITIS_LOOP_10_2_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.histogram_reduce_U0", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "histogram_reduce",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "547", "EstimateLatencyMax" : "547",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "hist1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "1"},
			{"Name" : "hist2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "2"},
			{"Name" : "hist", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_25_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.histogram_reduce_U0.flow_control_loop_pipe_U", "Parent" : "13"}]}


set ArgLastReadFirstWriteLatency {
	histogram {
		inputA {Type I LastRead 0 FirstWrite -1}
		inputB {Type I LastRead 0 FirstWrite -1}
		hist {Type O LastRead -1 FirstWrite 2}}
	histogram_map3 {
		inputA {Type I LastRead 0 FirstWrite -1}
		hist {Type IO LastRead 2 FirstWrite 0}}
	histogram_map3_Pipeline_VITIS_LOOP_4_1 {
		hist {Type O LastRead -1 FirstWrite 0}}
	histogram_map3_Pipeline_VITIS_LOOP_10_2 {
		old {Type I LastRead 0 FirstWrite -1}
		inputA {Type I LastRead 0 FirstWrite -1}
		hist {Type IO LastRead 2 FirstWrite 2}
		acc_out {Type O LastRead -1 FirstWrite 2}
		old_1_out {Type O LastRead -1 FirstWrite 2}}
	histogram_map {
		inputA {Type I LastRead 0 FirstWrite -1}
		hist {Type IO LastRead 2 FirstWrite 0}}
	histogram_map_Pipeline_VITIS_LOOP_4_1 {
		hist {Type O LastRead -1 FirstWrite 0}}
	histogram_map_Pipeline_VITIS_LOOP_10_2 {
		old {Type I LastRead 0 FirstWrite -1}
		inputA {Type I LastRead 0 FirstWrite -1}
		hist {Type IO LastRead 2 FirstWrite 2}
		acc_out {Type O LastRead -1 FirstWrite 2}
		old_1_out {Type O LastRead -1 FirstWrite 2}}
	histogram_reduce {
		hist1 {Type I LastRead 0 FirstWrite -1}
		hist2 {Type I LastRead 0 FirstWrite -1}
		hist {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1066", "Max" : "1066"}
	, {"Name" : "Interval", "Min" : "1067", "Max" : "1067"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inputA { ap_memory {  { inputA_address0 mem_address 1 9 }  { inputA_ce0 mem_ce 1 1 }  { inputA_d0 mem_din 1 32 }  { inputA_q0 mem_dout 0 32 }  { inputA_we0 mem_we 1 1 }  { inputA_address1 mem_address 1 9 }  { inputA_ce1 mem_ce 1 1 }  { inputA_d1 mem_din 1 32 }  { inputA_q1 mem_dout 0 32 }  { inputA_we1 mem_we 1 1 } } }
	inputB { ap_memory {  { inputB_address0 mem_address 1 9 }  { inputB_ce0 mem_ce 1 1 }  { inputB_d0 mem_din 1 32 }  { inputB_q0 mem_dout 0 32 }  { inputB_we0 mem_we 1 1 }  { inputB_address1 mem_address 1 9 }  { inputB_ce1 mem_ce 1 1 }  { inputB_d1 mem_din 1 32 }  { inputB_q1 mem_dout 0 32 }  { inputB_we1 mem_we 1 1 } } }
	hist { ap_memory {  { hist_address0 mem_address 1 10 }  { hist_ce0 mem_ce 1 1 }  { hist_d0 mem_din 1 32 }  { hist_q0 mem_dout 0 32 }  { hist_we0 mem_we 1 1 }  { hist_address1 mem_address 1 10 }  { hist_ce1 mem_ce 1 1 }  { hist_d1 mem_din 1 32 }  { hist_q1 mem_dout 0 32 }  { hist_we1 mem_we 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
