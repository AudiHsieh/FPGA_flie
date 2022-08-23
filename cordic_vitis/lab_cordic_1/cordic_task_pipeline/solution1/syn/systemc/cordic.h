// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _cordic_HH_
#define _cordic_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Block_ap_fixed_base_s.h"
#include "one_stage20.h"
#include "one_stage21.h"
#include "one_stage22.h"
#include "one_stage23.h"
#include "one_stage24.h"
#include "one_stage25.h"
#include "one_stage26.h"
#include "one_stage27.h"
#include "one_stage28.h"
#include "one_stage29.h"
#include "one_stage30.h"
#include "one_stage31.h"
#include "one_stage32.h"
#include "one_stage33.h"
#include "one_stage34.h"
#include "Block_ap_fixed_base_1.h"
#include "fifo_w10_d2_A.h"
#include "start_for_one_stabkb.h"
#include "start_for_one_stacud.h"
#include "start_for_one_stadEe.h"
#include "start_for_one_staeOg.h"
#include "start_for_one_stafYi.h"
#include "start_for_one_stag8j.h"
#include "start_for_one_stahbi.h"
#include "start_for_one_staibs.h"
#include "start_for_one_stajbC.h"
#include "start_for_one_stakbM.h"
#include "start_for_one_stalbW.h"
#include "start_for_one_stamb6.h"
#include "start_for_one_stancg.h"
#include "start_for_one_staocq.h"
#include "start_for_Block_apcA.h"

namespace ap_rtl {

struct cordic : public sc_module {
    // Port declarations 15
    sc_in< sc_lv<10> > in_theta_V_V_dout;
    sc_in< sc_logic > in_theta_V_V_empty_n;
    sc_out< sc_logic > in_theta_V_V_read;
    sc_out< sc_lv<10> > out_s_V_V_din;
    sc_in< sc_logic > out_s_V_V_full_n;
    sc_out< sc_logic > out_s_V_V_write;
    sc_out< sc_lv<10> > out_c_V_V_din;
    sc_in< sc_logic > out_c_V_V_full_n;
    sc_out< sc_logic > out_c_V_V_write;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    cordic(sc_module_name name);
    SC_HAS_PROCESS(cordic);

    ~cordic();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    Block_ap_fixed_base_s* Block_ap_fixed_base_U0;
    one_stage20* one_stage20_U0;
    one_stage21* one_stage21_U0;
    one_stage22* one_stage22_U0;
    one_stage23* one_stage23_U0;
    one_stage24* one_stage24_U0;
    one_stage25* one_stage25_U0;
    one_stage26* one_stage26_U0;
    one_stage27* one_stage27_U0;
    one_stage28* one_stage28_U0;
    one_stage29* one_stage29_U0;
    one_stage30* one_stage30_U0;
    one_stage31* one_stage31_U0;
    one_stage32* one_stage32_U0;
    one_stage33* one_stage33_U0;
    one_stage34* one_stage34_U0;
    Block_ap_fixed_base_1* Block_ap_fixed_base_1_U0;
    fifo_w10_d2_A* Stage0_COS_V_V_U;
    fifo_w10_d2_A* Stage0_Sin_V_V_U;
    fifo_w10_d2_A* Stage1_COS_V_V_U;
    fifo_w10_d2_A* Stage1_Sin_V_V_U;
    fifo_w10_d2_A* Theta2_V_V_U;
    fifo_w10_d2_A* Stage2_COS_V_V_U;
    fifo_w10_d2_A* Stage2_Sin_V_V_U;
    fifo_w10_d2_A* Theta3_V_V_U;
    fifo_w10_d2_A* Stage3_COS_V_V_U;
    fifo_w10_d2_A* Stage3_Sin_V_V_U;
    fifo_w10_d2_A* Theta4_V_V_U;
    fifo_w10_d2_A* Stage4_COS_V_V_U;
    fifo_w10_d2_A* Stage4_Sin_V_V_U;
    fifo_w10_d2_A* Theta5_V_V_U;
    fifo_w10_d2_A* Stage5_COS_V_V_U;
    fifo_w10_d2_A* Stage5_Sin_V_V_U;
    fifo_w10_d2_A* Theta6_V_V_U;
    fifo_w10_d2_A* Stage6_COS_V_V_U;
    fifo_w10_d2_A* Stage6_Sin_V_V_U;
    fifo_w10_d2_A* Theta7_V_V_U;
    fifo_w10_d2_A* Stage7_COS_V_V_U;
    fifo_w10_d2_A* Stage7_Sin_V_V_U;
    fifo_w10_d2_A* Theta8_V_V_U;
    fifo_w10_d2_A* Stage8_COS_V_V_U;
    fifo_w10_d2_A* Stage8_Sin_V_V_U;
    fifo_w10_d2_A* Theta9_V_V_U;
    fifo_w10_d2_A* Stage9_COS_V_V_U;
    fifo_w10_d2_A* Stage9_Sin_V_V_U;
    fifo_w10_d2_A* Theta10_V_V_U;
    fifo_w10_d2_A* Stage10_COS_V_V_U;
    fifo_w10_d2_A* Stage10_Sin_V_V_U;
    fifo_w10_d2_A* Theta11_V_V_U;
    fifo_w10_d2_A* Stage11_COS_V_V_U;
    fifo_w10_d2_A* Stage11_Sin_V_V_U;
    fifo_w10_d2_A* Theta12_V_V_U;
    fifo_w10_d2_A* Stage12_COS_V_V_U;
    fifo_w10_d2_A* Stage12_Sin_V_V_U;
    fifo_w10_d2_A* Theta13_V_V_U;
    fifo_w10_d2_A* Stage13_COS_V_V_U;
    fifo_w10_d2_A* Stage13_Sin_V_V_U;
    fifo_w10_d2_A* Theta14_V_V_U;
    fifo_w10_d2_A* Stage14_COS_V_V_U;
    fifo_w10_d2_A* Stage14_Sin_V_V_U;
    fifo_w10_d2_A* Theta15_V_V_U;
    fifo_w10_d2_A* Theta16_V_V_U;
    start_for_one_stabkb* start_for_one_stabkb_U;
    start_for_one_stacud* start_for_one_stacud_U;
    start_for_one_stadEe* start_for_one_stadEe_U;
    start_for_one_staeOg* start_for_one_staeOg_U;
    start_for_one_stafYi* start_for_one_stafYi_U;
    start_for_one_stag8j* start_for_one_stag8j_U;
    start_for_one_stahbi* start_for_one_stahbi_U;
    start_for_one_staibs* start_for_one_staibs_U;
    start_for_one_stajbC* start_for_one_stajbC_U;
    start_for_one_stakbM* start_for_one_stakbM_U;
    start_for_one_stalbW* start_for_one_stalbW_U;
    start_for_one_stamb6* start_for_one_stamb6_U;
    start_for_one_stancg* start_for_one_stancg_U;
    start_for_one_staocq* start_for_one_staocq_U;
    start_for_Block_apcA* start_for_Block_apcA_U;
    sc_signal< sc_logic > Block_ap_fixed_base_U0_ap_start;
    sc_signal< sc_logic > Block_ap_fixed_base_U0_ap_done;
    sc_signal< sc_logic > Block_ap_fixed_base_U0_ap_continue;
    sc_signal< sc_logic > Block_ap_fixed_base_U0_ap_idle;
    sc_signal< sc_logic > Block_ap_fixed_base_U0_ap_ready;
    sc_signal< sc_lv<10> > Block_ap_fixed_base_U0_Stage0_COS_V_V_din;
    sc_signal< sc_logic > Block_ap_fixed_base_U0_Stage0_COS_V_V_write;
    sc_signal< sc_lv<10> > Block_ap_fixed_base_U0_Stage0_Sin_V_V_din;
    sc_signal< sc_logic > Block_ap_fixed_base_U0_Stage0_Sin_V_V_write;
    sc_signal< sc_logic > one_stage20_U0_ap_start;
    sc_signal< sc_logic > one_stage20_U0_ap_done;
    sc_signal< sc_logic > one_stage20_U0_ap_continue;
    sc_signal< sc_logic > one_stage20_U0_ap_idle;
    sc_signal< sc_logic > one_stage20_U0_ap_ready;
    sc_signal< sc_logic > one_stage20_U0_start_out;
    sc_signal< sc_logic > one_stage20_U0_start_write;
    sc_signal< sc_logic > one_stage20_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage20_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage20_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage20_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage20_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage20_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage20_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage20_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage20_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage21_U0_ap_start;
    sc_signal< sc_logic > one_stage21_U0_ap_done;
    sc_signal< sc_logic > one_stage21_U0_ap_continue;
    sc_signal< sc_logic > one_stage21_U0_ap_idle;
    sc_signal< sc_logic > one_stage21_U0_ap_ready;
    sc_signal< sc_logic > one_stage21_U0_start_out;
    sc_signal< sc_logic > one_stage21_U0_start_write;
    sc_signal< sc_logic > one_stage21_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage21_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage21_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage21_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage21_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage21_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage21_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage21_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage21_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage22_U0_ap_start;
    sc_signal< sc_logic > one_stage22_U0_ap_done;
    sc_signal< sc_logic > one_stage22_U0_ap_continue;
    sc_signal< sc_logic > one_stage22_U0_ap_idle;
    sc_signal< sc_logic > one_stage22_U0_ap_ready;
    sc_signal< sc_logic > one_stage22_U0_start_out;
    sc_signal< sc_logic > one_stage22_U0_start_write;
    sc_signal< sc_logic > one_stage22_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage22_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage22_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage22_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage22_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage22_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage22_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage22_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage22_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage23_U0_ap_start;
    sc_signal< sc_logic > one_stage23_U0_ap_done;
    sc_signal< sc_logic > one_stage23_U0_ap_continue;
    sc_signal< sc_logic > one_stage23_U0_ap_idle;
    sc_signal< sc_logic > one_stage23_U0_ap_ready;
    sc_signal< sc_logic > one_stage23_U0_start_out;
    sc_signal< sc_logic > one_stage23_U0_start_write;
    sc_signal< sc_logic > one_stage23_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage23_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage23_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage23_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage23_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage23_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage23_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage23_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage23_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage24_U0_ap_start;
    sc_signal< sc_logic > one_stage24_U0_ap_done;
    sc_signal< sc_logic > one_stage24_U0_ap_continue;
    sc_signal< sc_logic > one_stage24_U0_ap_idle;
    sc_signal< sc_logic > one_stage24_U0_ap_ready;
    sc_signal< sc_logic > one_stage24_U0_start_out;
    sc_signal< sc_logic > one_stage24_U0_start_write;
    sc_signal< sc_logic > one_stage24_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage24_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage24_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage24_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage24_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage24_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage24_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage24_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage24_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage25_U0_ap_start;
    sc_signal< sc_logic > one_stage25_U0_ap_done;
    sc_signal< sc_logic > one_stage25_U0_ap_continue;
    sc_signal< sc_logic > one_stage25_U0_ap_idle;
    sc_signal< sc_logic > one_stage25_U0_ap_ready;
    sc_signal< sc_logic > one_stage25_U0_start_out;
    sc_signal< sc_logic > one_stage25_U0_start_write;
    sc_signal< sc_logic > one_stage25_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage25_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage25_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage25_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage25_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage25_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage25_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage25_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage25_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage26_U0_ap_start;
    sc_signal< sc_logic > one_stage26_U0_ap_done;
    sc_signal< sc_logic > one_stage26_U0_ap_continue;
    sc_signal< sc_logic > one_stage26_U0_ap_idle;
    sc_signal< sc_logic > one_stage26_U0_ap_ready;
    sc_signal< sc_logic > one_stage26_U0_start_out;
    sc_signal< sc_logic > one_stage26_U0_start_write;
    sc_signal< sc_logic > one_stage26_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage26_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage26_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage26_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage26_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage26_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage26_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage26_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage26_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage27_U0_ap_start;
    sc_signal< sc_logic > one_stage27_U0_ap_done;
    sc_signal< sc_logic > one_stage27_U0_ap_continue;
    sc_signal< sc_logic > one_stage27_U0_ap_idle;
    sc_signal< sc_logic > one_stage27_U0_ap_ready;
    sc_signal< sc_logic > one_stage27_U0_start_out;
    sc_signal< sc_logic > one_stage27_U0_start_write;
    sc_signal< sc_logic > one_stage27_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage27_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage27_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage27_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage27_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage27_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage27_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage27_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage27_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage28_U0_ap_start;
    sc_signal< sc_logic > one_stage28_U0_ap_done;
    sc_signal< sc_logic > one_stage28_U0_ap_continue;
    sc_signal< sc_logic > one_stage28_U0_ap_idle;
    sc_signal< sc_logic > one_stage28_U0_ap_ready;
    sc_signal< sc_logic > one_stage28_U0_start_out;
    sc_signal< sc_logic > one_stage28_U0_start_write;
    sc_signal< sc_logic > one_stage28_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage28_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage28_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage28_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage28_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage28_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage28_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage28_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage28_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage29_U0_ap_start;
    sc_signal< sc_logic > one_stage29_U0_ap_done;
    sc_signal< sc_logic > one_stage29_U0_ap_continue;
    sc_signal< sc_logic > one_stage29_U0_ap_idle;
    sc_signal< sc_logic > one_stage29_U0_ap_ready;
    sc_signal< sc_logic > one_stage29_U0_start_out;
    sc_signal< sc_logic > one_stage29_U0_start_write;
    sc_signal< sc_logic > one_stage29_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage29_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage29_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage29_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage29_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage29_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage29_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage29_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage29_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage30_U0_ap_start;
    sc_signal< sc_logic > one_stage30_U0_ap_done;
    sc_signal< sc_logic > one_stage30_U0_ap_continue;
    sc_signal< sc_logic > one_stage30_U0_ap_idle;
    sc_signal< sc_logic > one_stage30_U0_ap_ready;
    sc_signal< sc_logic > one_stage30_U0_start_out;
    sc_signal< sc_logic > one_stage30_U0_start_write;
    sc_signal< sc_logic > one_stage30_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage30_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage30_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage30_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage30_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage30_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage30_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage30_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage30_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage31_U0_ap_start;
    sc_signal< sc_logic > one_stage31_U0_ap_done;
    sc_signal< sc_logic > one_stage31_U0_ap_continue;
    sc_signal< sc_logic > one_stage31_U0_ap_idle;
    sc_signal< sc_logic > one_stage31_U0_ap_ready;
    sc_signal< sc_logic > one_stage31_U0_start_out;
    sc_signal< sc_logic > one_stage31_U0_start_write;
    sc_signal< sc_logic > one_stage31_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage31_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage31_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage31_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage31_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage31_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage31_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage31_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage31_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage32_U0_ap_start;
    sc_signal< sc_logic > one_stage32_U0_ap_done;
    sc_signal< sc_logic > one_stage32_U0_ap_continue;
    sc_signal< sc_logic > one_stage32_U0_ap_idle;
    sc_signal< sc_logic > one_stage32_U0_ap_ready;
    sc_signal< sc_logic > one_stage32_U0_start_out;
    sc_signal< sc_logic > one_stage32_U0_start_write;
    sc_signal< sc_logic > one_stage32_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage32_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage32_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage32_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage32_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage32_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage32_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage32_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage32_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage33_U0_ap_start;
    sc_signal< sc_logic > one_stage33_U0_ap_done;
    sc_signal< sc_logic > one_stage33_U0_ap_continue;
    sc_signal< sc_logic > one_stage33_U0_ap_idle;
    sc_signal< sc_logic > one_stage33_U0_ap_ready;
    sc_signal< sc_logic > one_stage33_U0_start_out;
    sc_signal< sc_logic > one_stage33_U0_start_write;
    sc_signal< sc_logic > one_stage33_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage33_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage33_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage33_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage33_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage33_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage33_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage33_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage33_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > one_stage34_U0_ap_start;
    sc_signal< sc_logic > one_stage34_U0_ap_done;
    sc_signal< sc_logic > one_stage34_U0_ap_continue;
    sc_signal< sc_logic > one_stage34_U0_ap_idle;
    sc_signal< sc_logic > one_stage34_U0_ap_ready;
    sc_signal< sc_logic > one_stage34_U0_start_out;
    sc_signal< sc_logic > one_stage34_U0_start_write;
    sc_signal< sc_logic > one_stage34_U0_s_current_cos_V_V_read;
    sc_signal< sc_logic > one_stage34_U0_s_current_sin_V_V_read;
    sc_signal< sc_logic > one_stage34_U0_s_current_theta_V_V_read;
    sc_signal< sc_lv<10> > one_stage34_U0_s_output_cos_V_V_din;
    sc_signal< sc_logic > one_stage34_U0_s_output_cos_V_V_write;
    sc_signal< sc_lv<10> > one_stage34_U0_s_output_sin_V_V_din;
    sc_signal< sc_logic > one_stage34_U0_s_output_sin_V_V_write;
    sc_signal< sc_lv<10> > one_stage34_U0_s_output_theta_V_V_din;
    sc_signal< sc_logic > one_stage34_U0_s_output_theta_V_V_write;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > Block_ap_fixed_base_1_U0_ap_start;
    sc_signal< sc_logic > Block_ap_fixed_base_1_U0_ap_done;
    sc_signal< sc_logic > Block_ap_fixed_base_1_U0_ap_continue;
    sc_signal< sc_logic > Block_ap_fixed_base_1_U0_ap_idle;
    sc_signal< sc_logic > Block_ap_fixed_base_1_U0_ap_ready;
    sc_signal< sc_logic > Block_ap_fixed_base_1_U0_Theta16_V_V_read;
    sc_signal< sc_logic > Stage0_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage0_COS_V_V_dout;
    sc_signal< sc_logic > Stage0_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage0_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage0_Sin_V_V_dout;
    sc_signal< sc_logic > Stage0_Sin_V_V_empty_n;
    sc_signal< sc_logic > Stage1_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage1_COS_V_V_dout;
    sc_signal< sc_logic > Stage1_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage1_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage1_Sin_V_V_dout;
    sc_signal< sc_logic > Stage1_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta2_V_V_full_n;
    sc_signal< sc_lv<10> > Theta2_V_V_dout;
    sc_signal< sc_logic > Theta2_V_V_empty_n;
    sc_signal< sc_logic > Stage2_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage2_COS_V_V_dout;
    sc_signal< sc_logic > Stage2_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage2_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage2_Sin_V_V_dout;
    sc_signal< sc_logic > Stage2_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta3_V_V_full_n;
    sc_signal< sc_lv<10> > Theta3_V_V_dout;
    sc_signal< sc_logic > Theta3_V_V_empty_n;
    sc_signal< sc_logic > Stage3_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage3_COS_V_V_dout;
    sc_signal< sc_logic > Stage3_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage3_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage3_Sin_V_V_dout;
    sc_signal< sc_logic > Stage3_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta4_V_V_full_n;
    sc_signal< sc_lv<10> > Theta4_V_V_dout;
    sc_signal< sc_logic > Theta4_V_V_empty_n;
    sc_signal< sc_logic > Stage4_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage4_COS_V_V_dout;
    sc_signal< sc_logic > Stage4_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage4_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage4_Sin_V_V_dout;
    sc_signal< sc_logic > Stage4_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta5_V_V_full_n;
    sc_signal< sc_lv<10> > Theta5_V_V_dout;
    sc_signal< sc_logic > Theta5_V_V_empty_n;
    sc_signal< sc_logic > Stage5_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage5_COS_V_V_dout;
    sc_signal< sc_logic > Stage5_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage5_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage5_Sin_V_V_dout;
    sc_signal< sc_logic > Stage5_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta6_V_V_full_n;
    sc_signal< sc_lv<10> > Theta6_V_V_dout;
    sc_signal< sc_logic > Theta6_V_V_empty_n;
    sc_signal< sc_logic > Stage6_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage6_COS_V_V_dout;
    sc_signal< sc_logic > Stage6_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage6_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage6_Sin_V_V_dout;
    sc_signal< sc_logic > Stage6_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta7_V_V_full_n;
    sc_signal< sc_lv<10> > Theta7_V_V_dout;
    sc_signal< sc_logic > Theta7_V_V_empty_n;
    sc_signal< sc_logic > Stage7_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage7_COS_V_V_dout;
    sc_signal< sc_logic > Stage7_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage7_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage7_Sin_V_V_dout;
    sc_signal< sc_logic > Stage7_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta8_V_V_full_n;
    sc_signal< sc_lv<10> > Theta8_V_V_dout;
    sc_signal< sc_logic > Theta8_V_V_empty_n;
    sc_signal< sc_logic > Stage8_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage8_COS_V_V_dout;
    sc_signal< sc_logic > Stage8_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage8_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage8_Sin_V_V_dout;
    sc_signal< sc_logic > Stage8_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta9_V_V_full_n;
    sc_signal< sc_lv<10> > Theta9_V_V_dout;
    sc_signal< sc_logic > Theta9_V_V_empty_n;
    sc_signal< sc_logic > Stage9_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage9_COS_V_V_dout;
    sc_signal< sc_logic > Stage9_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage9_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage9_Sin_V_V_dout;
    sc_signal< sc_logic > Stage9_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta10_V_V_full_n;
    sc_signal< sc_lv<10> > Theta10_V_V_dout;
    sc_signal< sc_logic > Theta10_V_V_empty_n;
    sc_signal< sc_logic > Stage10_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage10_COS_V_V_dout;
    sc_signal< sc_logic > Stage10_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage10_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage10_Sin_V_V_dout;
    sc_signal< sc_logic > Stage10_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta11_V_V_full_n;
    sc_signal< sc_lv<10> > Theta11_V_V_dout;
    sc_signal< sc_logic > Theta11_V_V_empty_n;
    sc_signal< sc_logic > Stage11_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage11_COS_V_V_dout;
    sc_signal< sc_logic > Stage11_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage11_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage11_Sin_V_V_dout;
    sc_signal< sc_logic > Stage11_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta12_V_V_full_n;
    sc_signal< sc_lv<10> > Theta12_V_V_dout;
    sc_signal< sc_logic > Theta12_V_V_empty_n;
    sc_signal< sc_logic > Stage12_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage12_COS_V_V_dout;
    sc_signal< sc_logic > Stage12_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage12_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage12_Sin_V_V_dout;
    sc_signal< sc_logic > Stage12_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta13_V_V_full_n;
    sc_signal< sc_lv<10> > Theta13_V_V_dout;
    sc_signal< sc_logic > Theta13_V_V_empty_n;
    sc_signal< sc_logic > Stage13_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage13_COS_V_V_dout;
    sc_signal< sc_logic > Stage13_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage13_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage13_Sin_V_V_dout;
    sc_signal< sc_logic > Stage13_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta14_V_V_full_n;
    sc_signal< sc_lv<10> > Theta14_V_V_dout;
    sc_signal< sc_logic > Theta14_V_V_empty_n;
    sc_signal< sc_logic > Stage14_COS_V_V_full_n;
    sc_signal< sc_lv<10> > Stage14_COS_V_V_dout;
    sc_signal< sc_logic > Stage14_COS_V_V_empty_n;
    sc_signal< sc_logic > Stage14_Sin_V_V_full_n;
    sc_signal< sc_lv<10> > Stage14_Sin_V_V_dout;
    sc_signal< sc_logic > Stage14_Sin_V_V_empty_n;
    sc_signal< sc_logic > Theta15_V_V_full_n;
    sc_signal< sc_lv<10> > Theta15_V_V_dout;
    sc_signal< sc_logic > Theta15_V_V_empty_n;
    sc_signal< sc_logic > Theta16_V_V_full_n;
    sc_signal< sc_lv<10> > Theta16_V_V_dout;
    sc_signal< sc_logic > Theta16_V_V_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > ap_sync_reg_Block_ap_fixed_base_U0_ap_ready;
    sc_signal< sc_logic > ap_sync_Block_ap_fixed_base_U0_ap_ready;
    sc_signal< sc_lv<2> > Block_ap_fixed_base_U0_ap_ready_count;
    sc_signal< sc_logic > ap_sync_reg_one_stage20_U0_ap_ready;
    sc_signal< sc_logic > ap_sync_one_stage20_U0_ap_ready;
    sc_signal< sc_lv<2> > one_stage20_U0_ap_ready_count;
    sc_signal< sc_logic > Block_ap_fixed_base_U0_start_full_n;
    sc_signal< sc_logic > Block_ap_fixed_base_U0_start_write;
    sc_signal< sc_lv<1> > start_for_one_stage21_U0_din;
    sc_signal< sc_logic > start_for_one_stage21_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage21_U0_dout;
    sc_signal< sc_logic > start_for_one_stage21_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage22_U0_din;
    sc_signal< sc_logic > start_for_one_stage22_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage22_U0_dout;
    sc_signal< sc_logic > start_for_one_stage22_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage23_U0_din;
    sc_signal< sc_logic > start_for_one_stage23_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage23_U0_dout;
    sc_signal< sc_logic > start_for_one_stage23_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage24_U0_din;
    sc_signal< sc_logic > start_for_one_stage24_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage24_U0_dout;
    sc_signal< sc_logic > start_for_one_stage24_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage25_U0_din;
    sc_signal< sc_logic > start_for_one_stage25_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage25_U0_dout;
    sc_signal< sc_logic > start_for_one_stage25_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage26_U0_din;
    sc_signal< sc_logic > start_for_one_stage26_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage26_U0_dout;
    sc_signal< sc_logic > start_for_one_stage26_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage27_U0_din;
    sc_signal< sc_logic > start_for_one_stage27_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage27_U0_dout;
    sc_signal< sc_logic > start_for_one_stage27_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage28_U0_din;
    sc_signal< sc_logic > start_for_one_stage28_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage28_U0_dout;
    sc_signal< sc_logic > start_for_one_stage28_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage29_U0_din;
    sc_signal< sc_logic > start_for_one_stage29_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage29_U0_dout;
    sc_signal< sc_logic > start_for_one_stage29_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage30_U0_din;
    sc_signal< sc_logic > start_for_one_stage30_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage30_U0_dout;
    sc_signal< sc_logic > start_for_one_stage30_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage31_U0_din;
    sc_signal< sc_logic > start_for_one_stage31_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage31_U0_dout;
    sc_signal< sc_logic > start_for_one_stage31_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage32_U0_din;
    sc_signal< sc_logic > start_for_one_stage32_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage32_U0_dout;
    sc_signal< sc_logic > start_for_one_stage32_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage33_U0_din;
    sc_signal< sc_logic > start_for_one_stage33_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage33_U0_dout;
    sc_signal< sc_logic > start_for_one_stage33_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_one_stage34_U0_din;
    sc_signal< sc_logic > start_for_one_stage34_U0_full_n;
    sc_signal< sc_lv<1> > start_for_one_stage34_U0_dout;
    sc_signal< sc_logic > start_for_one_stage34_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Block_ap_fixed_base_1_U0_din;
    sc_signal< sc_logic > start_for_Block_ap_fixed_base_1_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Block_ap_fixed_base_1_U0_dout;
    sc_signal< sc_logic > start_for_Block_ap_fixed_base_1_U0_empty_n;
    sc_signal< sc_logic > Block_ap_fixed_base_1_U0_start_full_n;
    sc_signal< sc_logic > Block_ap_fixed_base_1_U0_start_write;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_Block_ap_fixed_base_1_U0_ap_continue();
    void thread_Block_ap_fixed_base_1_U0_ap_start();
    void thread_Block_ap_fixed_base_1_U0_start_full_n();
    void thread_Block_ap_fixed_base_1_U0_start_write();
    void thread_Block_ap_fixed_base_U0_ap_continue();
    void thread_Block_ap_fixed_base_U0_ap_start();
    void thread_Block_ap_fixed_base_U0_start_full_n();
    void thread_Block_ap_fixed_base_U0_start_write();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_Block_ap_fixed_base_U0_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_one_stage20_U0_ap_ready();
    void thread_ap_sync_ready();
    void thread_in_theta_V_V_read();
    void thread_one_stage20_U0_ap_continue();
    void thread_one_stage20_U0_ap_start();
    void thread_one_stage21_U0_ap_continue();
    void thread_one_stage21_U0_ap_start();
    void thread_one_stage22_U0_ap_continue();
    void thread_one_stage22_U0_ap_start();
    void thread_one_stage23_U0_ap_continue();
    void thread_one_stage23_U0_ap_start();
    void thread_one_stage24_U0_ap_continue();
    void thread_one_stage24_U0_ap_start();
    void thread_one_stage25_U0_ap_continue();
    void thread_one_stage25_U0_ap_start();
    void thread_one_stage26_U0_ap_continue();
    void thread_one_stage26_U0_ap_start();
    void thread_one_stage27_U0_ap_continue();
    void thread_one_stage27_U0_ap_start();
    void thread_one_stage28_U0_ap_continue();
    void thread_one_stage28_U0_ap_start();
    void thread_one_stage29_U0_ap_continue();
    void thread_one_stage29_U0_ap_start();
    void thread_one_stage30_U0_ap_continue();
    void thread_one_stage30_U0_ap_start();
    void thread_one_stage31_U0_ap_continue();
    void thread_one_stage31_U0_ap_start();
    void thread_one_stage32_U0_ap_continue();
    void thread_one_stage32_U0_ap_start();
    void thread_one_stage33_U0_ap_continue();
    void thread_one_stage33_U0_ap_start();
    void thread_one_stage34_U0_ap_continue();
    void thread_one_stage34_U0_ap_start();
    void thread_out_c_V_V_din();
    void thread_out_c_V_V_write();
    void thread_out_s_V_V_din();
    void thread_out_s_V_V_write();
    void thread_start_for_Block_ap_fixed_base_1_U0_din();
    void thread_start_for_one_stage21_U0_din();
    void thread_start_for_one_stage22_U0_din();
    void thread_start_for_one_stage23_U0_din();
    void thread_start_for_one_stage24_U0_din();
    void thread_start_for_one_stage25_U0_din();
    void thread_start_for_one_stage26_U0_din();
    void thread_start_for_one_stage27_U0_din();
    void thread_start_for_one_stage28_U0_din();
    void thread_start_for_one_stage29_U0_din();
    void thread_start_for_one_stage30_U0_din();
    void thread_start_for_one_stage31_U0_din();
    void thread_start_for_one_stage32_U0_din();
    void thread_start_for_one_stage33_U0_din();
    void thread_start_for_one_stage34_U0_din();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif