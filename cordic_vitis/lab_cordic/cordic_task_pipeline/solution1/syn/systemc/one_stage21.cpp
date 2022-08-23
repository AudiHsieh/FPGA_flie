// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "one_stage21.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic one_stage21::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic one_stage21::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> one_stage21::ap_ST_fsm_state1 = "1";
const sc_lv<2> one_stage21::ap_ST_fsm_state2 = "10";
const sc_lv<32> one_stage21::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> one_stage21::ap_const_lv32_1 = "1";
const sc_lv<1> one_stage21::ap_const_lv1_0 = "0";
const sc_lv<1> one_stage21::ap_const_lv1_1 = "1";
const sc_lv<32> one_stage21::ap_const_lv32_9 = "1001";
const sc_lv<10> one_stage21::ap_const_lv10_313 = "1100010011";
const sc_lv<10> one_stage21::ap_const_lv10_ED = "11101101";
const bool one_stage21::ap_const_boolean_1 = true;

one_stage21::one_stage21(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( s_current_cos_V_V_empty_n );
    sensitive << ( s_current_sin_V_V_empty_n );
    sensitive << ( s_current_theta_V_V_empty_n );

    SC_METHOD(thread_ap_block_state2);
    sensitive << ( s_output_cos_V_V_full_n );
    sensitive << ( s_output_sin_V_V_full_n );
    sensitive << ( s_output_theta_V_V_full_n );
    sensitive << ( tmp_reg_177 );

    SC_METHOD(thread_ap_condition_122);
    sensitive << ( s_output_cos_V_V_full_n );
    sensitive << ( s_output_sin_V_V_full_n );
    sensitive << ( s_output_theta_V_V_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_reg_177 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( s_output_cos_V_V_full_n );
    sensitive << ( s_output_sin_V_V_full_n );
    sensitive << ( s_output_theta_V_V_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_reg_177 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( real_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( internal_ap_ready );

    SC_METHOD(thread_c_V_14_fu_131_p2);
    sensitive << ( tmp_V_132_reg_147 );
    sensitive << ( r_V_14_reg_171 );

    SC_METHOD(thread_c_V_fu_115_p2);
    sensitive << ( tmp_V_132_reg_147 );
    sensitive << ( r_V_14_reg_171 );

    SC_METHOD(thread_internal_ap_ready);
    sensitive << ( s_output_cos_V_V_full_n );
    sensitive << ( s_output_sin_V_V_full_n );
    sensitive << ( s_output_theta_V_V_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_reg_177 );

    SC_METHOD(thread_r_V_14_fu_103_p1);
    sensitive << ( trunc_ln1333_s_fu_93_p4 );

    SC_METHOD(thread_r_V_fu_89_p1);
    sensitive << ( trunc_ln_fu_79_p4 );

    SC_METHOD(thread_real_start);
    sensitive << ( ap_start );
    sensitive << ( start_full_n );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_s_V_14_fu_136_p2);
    sensitive << ( tmp_V_133_reg_153 );
    sensitive << ( r_V_reg_165 );

    SC_METHOD(thread_s_V_fu_120_p2);
    sensitive << ( tmp_V_133_reg_153 );
    sensitive << ( r_V_reg_165 );

    SC_METHOD(thread_s_current_cos_V_V_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( s_current_cos_V_V_empty_n );

    SC_METHOD(thread_s_current_cos_V_V_read);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( s_current_cos_V_V_empty_n );
    sensitive << ( s_current_sin_V_V_empty_n );
    sensitive << ( s_current_theta_V_V_empty_n );

    SC_METHOD(thread_s_current_sin_V_V_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( s_current_sin_V_V_empty_n );

    SC_METHOD(thread_s_current_sin_V_V_read);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( s_current_cos_V_V_empty_n );
    sensitive << ( s_current_sin_V_V_empty_n );
    sensitive << ( s_current_theta_V_V_empty_n );

    SC_METHOD(thread_s_current_theta_V_V_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( s_current_theta_V_V_empty_n );

    SC_METHOD(thread_s_current_theta_V_V_read);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( s_current_cos_V_V_empty_n );
    sensitive << ( s_current_sin_V_V_empty_n );
    sensitive << ( s_current_theta_V_V_empty_n );

    SC_METHOD(thread_s_output_cos_V_V_blk_n);
    sensitive << ( s_output_cos_V_V_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_reg_177 );

    SC_METHOD(thread_s_output_cos_V_V_din);
    sensitive << ( tmp_reg_177 );
    sensitive << ( c_V_fu_115_p2 );
    sensitive << ( c_V_14_fu_131_p2 );
    sensitive << ( ap_condition_122 );

    SC_METHOD(thread_s_output_cos_V_V_write);
    sensitive << ( s_output_cos_V_V_full_n );
    sensitive << ( s_output_sin_V_V_full_n );
    sensitive << ( s_output_theta_V_V_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_reg_177 );

    SC_METHOD(thread_s_output_sin_V_V_blk_n);
    sensitive << ( s_output_sin_V_V_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_reg_177 );

    SC_METHOD(thread_s_output_sin_V_V_din);
    sensitive << ( tmp_reg_177 );
    sensitive << ( s_V_fu_120_p2 );
    sensitive << ( s_V_14_fu_136_p2 );
    sensitive << ( ap_condition_122 );

    SC_METHOD(thread_s_output_sin_V_V_write);
    sensitive << ( s_output_cos_V_V_full_n );
    sensitive << ( s_output_sin_V_V_full_n );
    sensitive << ( s_output_theta_V_V_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_reg_177 );

    SC_METHOD(thread_s_output_theta_V_V_blk_n);
    sensitive << ( s_output_theta_V_V_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_reg_177 );

    SC_METHOD(thread_s_output_theta_V_V_din);
    sensitive << ( tmp_reg_177 );
    sensitive << ( t_V_fu_125_p2 );
    sensitive << ( t_V_8_fu_141_p2 );
    sensitive << ( ap_condition_122 );

    SC_METHOD(thread_s_output_theta_V_V_write);
    sensitive << ( s_output_cos_V_V_full_n );
    sensitive << ( s_output_sin_V_V_full_n );
    sensitive << ( s_output_theta_V_V_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_reg_177 );

    SC_METHOD(thread_start_out);
    sensitive << ( real_start );

    SC_METHOD(thread_start_write);
    sensitive << ( real_start );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_t_V_8_fu_141_p2);
    sensitive << ( tmp_V_134_reg_159 );

    SC_METHOD(thread_t_V_fu_125_p2);
    sensitive << ( tmp_V_134_reg_159 );

    SC_METHOD(thread_trunc_ln1333_s_fu_93_p4);
    sensitive << ( s_current_sin_V_V_dout );

    SC_METHOD(thread_trunc_ln_fu_79_p4);
    sensitive << ( s_current_cos_V_V_dout );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( s_current_cos_V_V_empty_n );
    sensitive << ( s_current_sin_V_V_empty_n );
    sensitive << ( s_current_theta_V_V_empty_n );
    sensitive << ( s_output_cos_V_V_full_n );
    sensitive << ( s_output_sin_V_V_full_n );
    sensitive << ( s_output_theta_V_V_full_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_reg_177 );

    start_once_reg = SC_LOGIC_0;
    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "01";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "one_stage21_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, start_full_n, "(port)start_full_n");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, start_out, "(port)start_out");
    sc_trace(mVcdFile, start_write, "(port)start_write");
    sc_trace(mVcdFile, s_current_cos_V_V_dout, "(port)s_current_cos_V_V_dout");
    sc_trace(mVcdFile, s_current_cos_V_V_empty_n, "(port)s_current_cos_V_V_empty_n");
    sc_trace(mVcdFile, s_current_cos_V_V_read, "(port)s_current_cos_V_V_read");
    sc_trace(mVcdFile, s_current_sin_V_V_dout, "(port)s_current_sin_V_V_dout");
    sc_trace(mVcdFile, s_current_sin_V_V_empty_n, "(port)s_current_sin_V_V_empty_n");
    sc_trace(mVcdFile, s_current_sin_V_V_read, "(port)s_current_sin_V_V_read");
    sc_trace(mVcdFile, s_current_theta_V_V_dout, "(port)s_current_theta_V_V_dout");
    sc_trace(mVcdFile, s_current_theta_V_V_empty_n, "(port)s_current_theta_V_V_empty_n");
    sc_trace(mVcdFile, s_current_theta_V_V_read, "(port)s_current_theta_V_V_read");
    sc_trace(mVcdFile, s_output_cos_V_V_din, "(port)s_output_cos_V_V_din");
    sc_trace(mVcdFile, s_output_cos_V_V_full_n, "(port)s_output_cos_V_V_full_n");
    sc_trace(mVcdFile, s_output_cos_V_V_write, "(port)s_output_cos_V_V_write");
    sc_trace(mVcdFile, s_output_sin_V_V_din, "(port)s_output_sin_V_V_din");
    sc_trace(mVcdFile, s_output_sin_V_V_full_n, "(port)s_output_sin_V_V_full_n");
    sc_trace(mVcdFile, s_output_sin_V_V_write, "(port)s_output_sin_V_V_write");
    sc_trace(mVcdFile, s_output_theta_V_V_din, "(port)s_output_theta_V_V_din");
    sc_trace(mVcdFile, s_output_theta_V_V_full_n, "(port)s_output_theta_V_V_full_n");
    sc_trace(mVcdFile, s_output_theta_V_V_write, "(port)s_output_theta_V_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, real_start, "real_start");
    sc_trace(mVcdFile, start_once_reg, "start_once_reg");
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, internal_ap_ready, "internal_ap_ready");
    sc_trace(mVcdFile, s_current_cos_V_V_blk_n, "s_current_cos_V_V_blk_n");
    sc_trace(mVcdFile, s_current_sin_V_V_blk_n, "s_current_sin_V_V_blk_n");
    sc_trace(mVcdFile, s_current_theta_V_V_blk_n, "s_current_theta_V_V_blk_n");
    sc_trace(mVcdFile, s_output_cos_V_V_blk_n, "s_output_cos_V_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_reg_177, "tmp_reg_177");
    sc_trace(mVcdFile, s_output_sin_V_V_blk_n, "s_output_sin_V_V_blk_n");
    sc_trace(mVcdFile, s_output_theta_V_V_blk_n, "s_output_theta_V_V_blk_n");
    sc_trace(mVcdFile, tmp_V_132_reg_147, "tmp_V_132_reg_147");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, tmp_V_133_reg_153, "tmp_V_133_reg_153");
    sc_trace(mVcdFile, tmp_V_134_reg_159, "tmp_V_134_reg_159");
    sc_trace(mVcdFile, r_V_fu_89_p1, "r_V_fu_89_p1");
    sc_trace(mVcdFile, r_V_reg_165, "r_V_reg_165");
    sc_trace(mVcdFile, r_V_14_fu_103_p1, "r_V_14_fu_103_p1");
    sc_trace(mVcdFile, r_V_14_reg_171, "r_V_14_reg_171");
    sc_trace(mVcdFile, c_V_fu_115_p2, "c_V_fu_115_p2");
    sc_trace(mVcdFile, ap_block_state2, "ap_block_state2");
    sc_trace(mVcdFile, c_V_14_fu_131_p2, "c_V_14_fu_131_p2");
    sc_trace(mVcdFile, s_V_fu_120_p2, "s_V_fu_120_p2");
    sc_trace(mVcdFile, s_V_14_fu_136_p2, "s_V_14_fu_136_p2");
    sc_trace(mVcdFile, t_V_fu_125_p2, "t_V_fu_125_p2");
    sc_trace(mVcdFile, t_V_8_fu_141_p2, "t_V_8_fu_141_p2");
    sc_trace(mVcdFile, trunc_ln_fu_79_p4, "trunc_ln_fu_79_p4");
    sc_trace(mVcdFile, trunc_ln1333_s_fu_93_p4, "trunc_ln1333_s_fu_93_p4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_condition_122, "ap_condition_122");
#endif

    }
}

one_stage21::~one_stage21() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void one_stage21::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    !((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read()))))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        start_once_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_0, internal_ap_ready.read()))) {
            start_once_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, internal_ap_ready.read())) {
            start_once_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_cos_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_sin_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_theta_V_V_empty_n.read())))) {
        r_V_14_reg_171 = r_V_14_fu_103_p1.read();
        r_V_reg_165 = r_V_fu_89_p1.read();
        tmp_V_132_reg_147 = s_current_cos_V_V_dout.read();
        tmp_V_133_reg_153 = s_current_sin_V_V_dout.read();
        tmp_V_134_reg_159 = s_current_theta_V_V_dout.read();
        tmp_reg_177 = s_current_theta_V_V_dout.read().range(9, 9);
    }
}

void one_stage21::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void one_stage21::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void one_stage21::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_cos_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_sin_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_theta_V_V_empty_n.read()));
}

void one_stage21::thread_ap_block_state2() {
    ap_block_state2 = ((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())));
}

void one_stage21::thread_ap_condition_122() {
    ap_condition_122 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && !((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read()))));
}

void one_stage21::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read()))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void one_stage21::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void one_stage21::thread_ap_ready() {
    ap_ready = internal_ap_ready.read();
}

void one_stage21::thread_c_V_14_fu_131_p2() {
    c_V_14_fu_131_p2 = (!tmp_V_132_reg_147.read().is_01() || !r_V_14_reg_171.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_V_132_reg_147.read()) + sc_bigint<10>(r_V_14_reg_171.read()));
}

void one_stage21::thread_c_V_fu_115_p2() {
    c_V_fu_115_p2 = (!tmp_V_132_reg_147.read().is_01() || !r_V_14_reg_171.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_V_132_reg_147.read()) - sc_bigint<10>(r_V_14_reg_171.read()));
}

void one_stage21::thread_internal_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read()))))) {
        internal_ap_ready = ap_const_logic_1;
    } else {
        internal_ap_ready = ap_const_logic_0;
    }
}

void one_stage21::thread_r_V_14_fu_103_p1() {
    r_V_14_fu_103_p1 = esl_sext<10,9>(trunc_ln1333_s_fu_93_p4.read());
}

void one_stage21::thread_r_V_fu_89_p1() {
    r_V_fu_89_p1 = esl_sext<10,9>(trunc_ln_fu_79_p4.read());
}

void one_stage21::thread_real_start() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_full_n.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()))) {
        real_start = ap_const_logic_0;
    } else {
        real_start = ap_start.read();
    }
}

void one_stage21::thread_s_V_14_fu_136_p2() {
    s_V_14_fu_136_p2 = (!tmp_V_133_reg_153.read().is_01() || !r_V_reg_165.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_V_133_reg_153.read()) - sc_bigint<10>(r_V_reg_165.read()));
}

void one_stage21::thread_s_V_fu_120_p2() {
    s_V_fu_120_p2 = (!tmp_V_133_reg_153.read().is_01() || !r_V_reg_165.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_V_133_reg_153.read()) + sc_bigint<10>(r_V_reg_165.read()));
}

void one_stage21::thread_s_current_cos_V_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        s_current_cos_V_V_blk_n = s_current_cos_V_V_empty_n.read();
    } else {
        s_current_cos_V_V_blk_n = ap_const_logic_1;
    }
}

void one_stage21::thread_s_current_cos_V_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_cos_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_sin_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_theta_V_V_empty_n.read())))) {
        s_current_cos_V_V_read = ap_const_logic_1;
    } else {
        s_current_cos_V_V_read = ap_const_logic_0;
    }
}

void one_stage21::thread_s_current_sin_V_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        s_current_sin_V_V_blk_n = s_current_sin_V_V_empty_n.read();
    } else {
        s_current_sin_V_V_blk_n = ap_const_logic_1;
    }
}

void one_stage21::thread_s_current_sin_V_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_cos_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_sin_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_theta_V_V_empty_n.read())))) {
        s_current_sin_V_V_read = ap_const_logic_1;
    } else {
        s_current_sin_V_V_read = ap_const_logic_0;
    }
}

void one_stage21::thread_s_current_theta_V_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        s_current_theta_V_V_blk_n = s_current_theta_V_V_empty_n.read();
    } else {
        s_current_theta_V_V_blk_n = ap_const_logic_1;
    }
}

void one_stage21::thread_s_current_theta_V_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_cos_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_sin_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_theta_V_V_empty_n.read())))) {
        s_current_theta_V_V_read = ap_const_logic_1;
    } else {
        s_current_theta_V_V_read = ap_const_logic_0;
    }
}

void one_stage21::thread_s_output_cos_V_V_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1)))) {
        s_output_cos_V_V_blk_n = s_output_cos_V_V_full_n.read();
    } else {
        s_output_cos_V_V_blk_n = ap_const_logic_1;
    }
}

void one_stage21::thread_s_output_cos_V_V_din() {
    if (esl_seteq<1,1,1>(ap_condition_122.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1)) {
            s_output_cos_V_V_din = c_V_14_fu_131_p2.read();
        } else if (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0)) {
            s_output_cos_V_V_din = c_V_fu_115_p2.read();
        } else {
            s_output_cos_V_V_din = "XXXXXXXXXX";
        }
    } else {
        s_output_cos_V_V_din = "XXXXXXXXXX";
    }
}

void one_stage21::thread_s_output_cos_V_V_write() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
          !((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
          !((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())))))) {
        s_output_cos_V_V_write = ap_const_logic_1;
    } else {
        s_output_cos_V_V_write = ap_const_logic_0;
    }
}

void one_stage21::thread_s_output_sin_V_V_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1)))) {
        s_output_sin_V_V_blk_n = s_output_sin_V_V_full_n.read();
    } else {
        s_output_sin_V_V_blk_n = ap_const_logic_1;
    }
}

void one_stage21::thread_s_output_sin_V_V_din() {
    if (esl_seteq<1,1,1>(ap_condition_122.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1)) {
            s_output_sin_V_V_din = s_V_14_fu_136_p2.read();
        } else if (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0)) {
            s_output_sin_V_V_din = s_V_fu_120_p2.read();
        } else {
            s_output_sin_V_V_din = "XXXXXXXXXX";
        }
    } else {
        s_output_sin_V_V_din = "XXXXXXXXXX";
    }
}

void one_stage21::thread_s_output_sin_V_V_write() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
          !((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
          !((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())))))) {
        s_output_sin_V_V_write = ap_const_logic_1;
    } else {
        s_output_sin_V_V_write = ap_const_logic_0;
    }
}

void one_stage21::thread_s_output_theta_V_V_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1)))) {
        s_output_theta_V_V_blk_n = s_output_theta_V_V_full_n.read();
    } else {
        s_output_theta_V_V_blk_n = ap_const_logic_1;
    }
}

void one_stage21::thread_s_output_theta_V_V_din() {
    if (esl_seteq<1,1,1>(ap_condition_122.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1)) {
            s_output_theta_V_V_din = t_V_8_fu_141_p2.read();
        } else if (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0)) {
            s_output_theta_V_V_din = t_V_fu_125_p2.read();
        } else {
            s_output_theta_V_V_din = "XXXXXXXXXX";
        }
    } else {
        s_output_theta_V_V_din = "XXXXXXXXXX";
    }
}

void one_stage21::thread_s_output_theta_V_V_write() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
          !((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
          !((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())))))) {
        s_output_theta_V_V_write = ap_const_logic_1;
    } else {
        s_output_theta_V_V_write = ap_const_logic_0;
    }
}

void one_stage21::thread_start_out() {
    start_out = real_start.read();
}

void one_stage21::thread_start_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()))) {
        start_write = ap_const_logic_1;
    } else {
        start_write = ap_const_logic_0;
    }
}

void one_stage21::thread_t_V_8_fu_141_p2() {
    t_V_8_fu_141_p2 = (!tmp_V_134_reg_159.read().is_01() || !ap_const_lv10_ED.is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_V_134_reg_159.read()) + sc_biguint<10>(ap_const_lv10_ED));
}

void one_stage21::thread_t_V_fu_125_p2() {
    t_V_fu_125_p2 = (!tmp_V_134_reg_159.read().is_01() || !ap_const_lv10_313.is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_V_134_reg_159.read()) + sc_bigint<10>(ap_const_lv10_313));
}

void one_stage21::thread_trunc_ln1333_s_fu_93_p4() {
    trunc_ln1333_s_fu_93_p4 = s_current_sin_V_V_dout.read().range(9, 1);
}

void one_stage21::thread_trunc_ln_fu_79_p4() {
    trunc_ln_fu_79_p4 = s_current_cos_V_V_dout.read().range(9, 1);
}

void one_stage21::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_cos_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_sin_V_V_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, s_current_theta_V_V_empty_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && !((esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_cos_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_sin_V_V_full_n.read())) || (esl_seteq<1,1,1>(tmp_reg_177.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_const_logic_0, s_output_theta_V_V_full_n.read()))))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<2>) ("XX");
            break;
    }
}

}

