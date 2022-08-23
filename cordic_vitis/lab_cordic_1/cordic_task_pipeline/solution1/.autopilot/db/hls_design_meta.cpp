#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("in_theta_V_V_dout", 10, hls_in, 0, "ap_fifo", "fifo_data", 1),
	Port_Property("in_theta_V_V_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("in_theta_V_V_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 1),
	Port_Property("out_s_V_V_din", 10, hls_out, 1, "ap_fifo", "fifo_data", 1),
	Port_Property("out_s_V_V_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("out_s_V_V_write", 1, hls_out, 1, "ap_fifo", "fifo_update", 1),
	Port_Property("out_c_V_V_din", 10, hls_out, 2, "ap_fifo", "fifo_data", 1),
	Port_Property("out_c_V_V_full_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 1),
	Port_Property("out_c_V_V_write", 1, hls_out, 2, "ap_fifo", "fifo_update", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "cordic";
