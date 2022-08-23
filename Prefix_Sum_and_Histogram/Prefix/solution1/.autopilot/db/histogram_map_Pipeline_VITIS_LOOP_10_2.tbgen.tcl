set moduleName histogram_map_Pipeline_VITIS_LOOP_10_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {histogram_map_Pipeline_VITIS_LOOP_10_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ old int 32 regular  }
	{ inputA int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ hist int 32 regular {array 544 { 0 1 } 1 1 }  }
	{ acc_out int 32 regular {pointer 1}  }
	{ old_1_out int 10 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "old", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inputA", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hist", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "old_1_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ old sc_in sc_lv 32 signal 0 } 
	{ inputA_address0 sc_out sc_lv 9 signal 1 } 
	{ inputA_ce0 sc_out sc_logic 1 signal 1 } 
	{ inputA_q0 sc_in sc_lv 32 signal 1 } 
	{ hist_address0 sc_out sc_lv 10 signal 2 } 
	{ hist_ce0 sc_out sc_logic 1 signal 2 } 
	{ hist_we0 sc_out sc_logic 1 signal 2 } 
	{ hist_d0 sc_out sc_lv 32 signal 2 } 
	{ hist_address1 sc_out sc_lv 10 signal 2 } 
	{ hist_ce1 sc_out sc_logic 1 signal 2 } 
	{ hist_q1 sc_in sc_lv 32 signal 2 } 
	{ acc_out sc_out sc_lv 32 signal 3 } 
	{ acc_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ old_1_out sc_out sc_lv 10 signal 4 } 
	{ old_1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "old", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "old", "role": "default" }} , 
 	{ "name": "inputA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "inputA", "role": "address0" }} , 
 	{ "name": "inputA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputA", "role": "ce0" }} , 
 	{ "name": "inputA_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inputA", "role": "q0" }} , 
 	{ "name": "hist_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "hist", "role": "address0" }} , 
 	{ "name": "hist_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist", "role": "ce0" }} , 
 	{ "name": "hist_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist", "role": "we0" }} , 
 	{ "name": "hist_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hist", "role": "d0" }} , 
 	{ "name": "hist_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "hist", "role": "address1" }} , 
 	{ "name": "hist_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hist", "role": "ce1" }} , 
 	{ "name": "hist_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hist", "role": "q1" }} , 
 	{ "name": "acc_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "acc_out", "role": "default" }} , 
 	{ "name": "acc_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_out", "role": "ap_vld" }} , 
 	{ "name": "old_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "old_1_out", "role": "default" }} , 
 	{ "name": "old_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "old_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	histogram_map_Pipeline_VITIS_LOOP_10_2 {
		old {Type I LastRead 0 FirstWrite -1}
		inputA {Type I LastRead 0 FirstWrite -1}
		hist {Type IO LastRead 2 FirstWrite 2}
		acc_out {Type O LastRead -1 FirstWrite 2}
		old_1_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "516", "Max" : "516"}
	, {"Name" : "Interval", "Min" : "516", "Max" : "516"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	old { ap_none {  { old in_data 0 32 } } }
	inputA { ap_memory {  { inputA_address0 mem_address 1 9 }  { inputA_ce0 mem_ce 1 1 }  { inputA_q0 mem_dout 0 32 } } }
	hist { ap_memory {  { hist_address0 mem_address 1 10 }  { hist_ce0 mem_ce 1 1 }  { hist_we0 mem_we 1 1 }  { hist_d0 mem_din 1 32 }  { hist_address1 MemPortADDR2 1 10 }  { hist_ce1 MemPortCE2 1 1 }  { hist_q1 MemPortDOUT2 0 32 } } }
	acc_out { ap_vld {  { acc_out out_data 1 32 }  { acc_out_ap_vld out_vld 1 1 } } }
	old_1_out { ap_vld {  { old_1_out out_data 1 10 }  { old_1_out_ap_vld out_vld 1 1 } } }
}
