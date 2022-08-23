set moduleName one_stage31
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {one_stage31}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_current_cos_V_V int 10 regular {fifo 0 volatile }  }
	{ s_current_sin_V_V int 10 regular {fifo 0 volatile }  }
	{ s_current_theta_V_V int 10 regular {fifo 0 volatile }  }
	{ s_output_cos_V_V int 10 regular {fifo 1 volatile }  }
	{ s_output_sin_V_V int 10 regular {fifo 1 volatile }  }
	{ s_output_theta_V_V int 10 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_current_cos_V_V", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "s_current_sin_V_V", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "s_current_theta_V_V", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "s_output_cos_V_V", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_output_sin_V_V", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_output_theta_V_V", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ s_current_cos_V_V_dout sc_in sc_lv 10 signal 0 } 
	{ s_current_cos_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ s_current_cos_V_V_read sc_out sc_logic 1 signal 0 } 
	{ s_current_sin_V_V_dout sc_in sc_lv 10 signal 1 } 
	{ s_current_sin_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ s_current_sin_V_V_read sc_out sc_logic 1 signal 1 } 
	{ s_current_theta_V_V_dout sc_in sc_lv 10 signal 2 } 
	{ s_current_theta_V_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ s_current_theta_V_V_read sc_out sc_logic 1 signal 2 } 
	{ s_output_cos_V_V_din sc_out sc_lv 10 signal 3 } 
	{ s_output_cos_V_V_full_n sc_in sc_logic 1 signal 3 } 
	{ s_output_cos_V_V_write sc_out sc_logic 1 signal 3 } 
	{ s_output_sin_V_V_din sc_out sc_lv 10 signal 4 } 
	{ s_output_sin_V_V_full_n sc_in sc_logic 1 signal 4 } 
	{ s_output_sin_V_V_write sc_out sc_logic 1 signal 4 } 
	{ s_output_theta_V_V_din sc_out sc_lv 10 signal 5 } 
	{ s_output_theta_V_V_full_n sc_in sc_logic 1 signal 5 } 
	{ s_output_theta_V_V_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "s_current_cos_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_current_cos_V_V", "role": "dout" }} , 
 	{ "name": "s_current_cos_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_current_cos_V_V", "role": "empty_n" }} , 
 	{ "name": "s_current_cos_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_current_cos_V_V", "role": "read" }} , 
 	{ "name": "s_current_sin_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_current_sin_V_V", "role": "dout" }} , 
 	{ "name": "s_current_sin_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_current_sin_V_V", "role": "empty_n" }} , 
 	{ "name": "s_current_sin_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_current_sin_V_V", "role": "read" }} , 
 	{ "name": "s_current_theta_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_current_theta_V_V", "role": "dout" }} , 
 	{ "name": "s_current_theta_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_current_theta_V_V", "role": "empty_n" }} , 
 	{ "name": "s_current_theta_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_current_theta_V_V", "role": "read" }} , 
 	{ "name": "s_output_cos_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_output_cos_V_V", "role": "din" }} , 
 	{ "name": "s_output_cos_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_output_cos_V_V", "role": "full_n" }} , 
 	{ "name": "s_output_cos_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_output_cos_V_V", "role": "write" }} , 
 	{ "name": "s_output_sin_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_output_sin_V_V", "role": "din" }} , 
 	{ "name": "s_output_sin_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_output_sin_V_V", "role": "full_n" }} , 
 	{ "name": "s_output_sin_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_output_sin_V_V", "role": "write" }} , 
 	{ "name": "s_output_theta_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_output_theta_V_V", "role": "din" }} , 
 	{ "name": "s_output_theta_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_output_theta_V_V", "role": "full_n" }} , 
 	{ "name": "s_output_theta_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_output_theta_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "s_current_cos_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "s_current_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_sin_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "s_current_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_current_theta_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "s_current_theta_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_cos_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "s_output_cos_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_sin_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "s_output_sin_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_output_theta_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "s_output_theta_V_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	one_stage31 {
		s_current_cos_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_sin_V_V {Type I LastRead 0 FirstWrite -1}
		s_current_theta_V_V {Type I LastRead 0 FirstWrite -1}
		s_output_cos_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_sin_V_V {Type O LastRead -1 FirstWrite 1}
		s_output_theta_V_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_current_cos_V_V { ap_fifo {  { s_current_cos_V_V_dout fifo_data 0 10 }  { s_current_cos_V_V_empty_n fifo_status 0 1 }  { s_current_cos_V_V_read fifo_update 1 1 } } }
	s_current_sin_V_V { ap_fifo {  { s_current_sin_V_V_dout fifo_data 0 10 }  { s_current_sin_V_V_empty_n fifo_status 0 1 }  { s_current_sin_V_V_read fifo_update 1 1 } } }
	s_current_theta_V_V { ap_fifo {  { s_current_theta_V_V_dout fifo_data 0 10 }  { s_current_theta_V_V_empty_n fifo_status 0 1 }  { s_current_theta_V_V_read fifo_update 1 1 } } }
	s_output_cos_V_V { ap_fifo {  { s_output_cos_V_V_din fifo_data 1 10 }  { s_output_cos_V_V_full_n fifo_status 0 1 }  { s_output_cos_V_V_write fifo_update 1 1 } } }
	s_output_sin_V_V { ap_fifo {  { s_output_sin_V_V_din fifo_data 1 10 }  { s_output_sin_V_V_full_n fifo_status 0 1 }  { s_output_sin_V_V_write fifo_update 1 1 } } }
	s_output_theta_V_V { ap_fifo {  { s_output_theta_V_V_din fifo_data 1 10 }  { s_output_theta_V_V_full_n fifo_status 0 1 }  { s_output_theta_V_V_write fifo_update 1 1 } } }
}
