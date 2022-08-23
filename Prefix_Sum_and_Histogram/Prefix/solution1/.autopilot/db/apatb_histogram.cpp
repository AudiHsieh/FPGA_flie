#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_inputA "../tv/cdatafile/c.histogram.autotvin_inputA.dat"
#define AUTOTB_TVOUT_inputA "../tv/cdatafile/c.histogram.autotvout_inputA.dat"
// wrapc file define:
#define AUTOTB_TVIN_inputB "../tv/cdatafile/c.histogram.autotvin_inputB.dat"
#define AUTOTB_TVOUT_inputB "../tv/cdatafile/c.histogram.autotvout_inputB.dat"
// wrapc file define:
#define AUTOTB_TVIN_hist "../tv/cdatafile/c.histogram.autotvin_hist.dat"
#define AUTOTB_TVOUT_hist "../tv/cdatafile/c.histogram.autotvout_hist.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_inputA "../tv/rtldatafile/rtl.histogram.autotvout_inputA.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_inputB "../tv/rtldatafile/rtl.histogram.autotvout_inputB.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_hist "../tv/rtldatafile/rtl.histogram.autotvout_hist.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  inputA_depth = 0;
  inputB_depth = 0;
  hist_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{inputA " << inputA_depth << "}\n";
  total_list << "{inputB " << inputB_depth << "}\n";
  total_list << "{hist " << hist_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int inputA_depth;
    int inputB_depth;
    int hist_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void histogram_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_histogram_hw(volatile void * __xlx_apatb_param_inputA, volatile void * __xlx_apatb_param_inputB, volatile void * __xlx_apatb_param_hist) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_hist);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > hist_pc_buffer(544);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "hist");
  
            // push token into output port buffer
            if (AESL_token != "") {
              hist_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 544; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_hist)[j*4+0] = hist_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_hist)[j*4+1] = hist_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_hist)[j*4+2] = hist_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_hist)[j*4+3] = hist_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//inputA
aesl_fh.touch(AUTOTB_TVIN_inputA);
aesl_fh.touch(AUTOTB_TVOUT_inputA);
//inputB
aesl_fh.touch(AUTOTB_TVIN_inputB);
aesl_fh.touch(AUTOTB_TVOUT_inputB);
//hist
aesl_fh.touch(AUTOTB_TVIN_hist);
aesl_fh.touch(AUTOTB_TVOUT_hist);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_inputA = 0;
// print inputA Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_inputA, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_inputA = 0*4;
  if (__xlx_apatb_param_inputA) {
    for (int j = 0  - 0, e = 512 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_inputA)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_inputA, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(512, &tcl_file.inputA_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_inputA, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_inputB = 0;
// print inputB Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_inputB, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_inputB = 0*4;
  if (__xlx_apatb_param_inputB) {
    for (int j = 0  - 0, e = 512 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_inputB)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_inputB, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(512, &tcl_file.inputB_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_inputB, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_hist = 0;
// print hist Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_hist, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_hist = 0*4;
  if (__xlx_apatb_param_hist) {
    for (int j = 0  - 0, e = 544 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_hist)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVIN_hist, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(544, &tcl_file.hist_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_hist, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
histogram_hw_stub_wrapper(__xlx_apatb_param_inputA, __xlx_apatb_param_inputB, __xlx_apatb_param_hist);
CodeState = DUMP_OUTPUTS;
// print hist Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_hist, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_hist = 0*4;
  if (__xlx_apatb_param_hist) {
    for (int j = 0  - 0, e = 544 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_hist)[j];

    std::string s(__xlx_tmp_lv.to_string(SC_HEX));
    aesl_fh.write(AUTOTB_TVOUT_hist, s.append("\n")); 
      }
  }
}
  tcl_file.set_num(544, &tcl_file.hist_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_hist, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
