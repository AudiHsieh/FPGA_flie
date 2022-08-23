set SynModuleInfo {
  {SRCNAME histogram_map3_Pipeline_VITIS_LOOP_4_1 MODELNAME histogram_map3_Pipeline_VITIS_LOOP_4_1 RTLNAME histogram_histogram_map3_Pipeline_VITIS_LOOP_4_1
    SUBMODULES {
      {MODELNAME histogram_flow_control_loop_pipe_sequential_init RTLNAME histogram_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME histogram_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME histogram_map3_Pipeline_VITIS_LOOP_10_2 MODELNAME histogram_map3_Pipeline_VITIS_LOOP_10_2 RTLNAME histogram_histogram_map3_Pipeline_VITIS_LOOP_10_2}
  {SRCNAME histogram_map3 MODELNAME histogram_map3 RTLNAME histogram_histogram_map3}
  {SRCNAME histogram_map_Pipeline_VITIS_LOOP_4_1 MODELNAME histogram_map_Pipeline_VITIS_LOOP_4_1 RTLNAME histogram_histogram_map_Pipeline_VITIS_LOOP_4_1}
  {SRCNAME histogram_map_Pipeline_VITIS_LOOP_10_2 MODELNAME histogram_map_Pipeline_VITIS_LOOP_10_2 RTLNAME histogram_histogram_map_Pipeline_VITIS_LOOP_10_2}
  {SRCNAME histogram_map MODELNAME histogram_map RTLNAME histogram_histogram_map}
  {SRCNAME histogram_reduce MODELNAME histogram_reduce RTLNAME histogram_histogram_reduce
    SUBMODULES {
      {MODELNAME histogram_flow_control_loop_pipe RTLNAME histogram_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME histogram_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME histogram MODELNAME histogram RTLNAME histogram IS_TOP 1
    SUBMODULES {
      {MODELNAME histogram_hist1_memcore RTLNAME histogram_hist1_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME histogram_hist1 RTLNAME histogram_hist1 BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
    }
  }
}
