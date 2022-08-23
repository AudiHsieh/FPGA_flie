#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void histogram(int*, int*, int*);
extern "C" void apatb_histogram_hw(volatile void * __xlx_apatb_param_inputA, volatile void * __xlx_apatb_param_inputB, volatile void * __xlx_apatb_param_hist) {
  // Collect __xlx_inputA__tmp_vec
  vector<sc_bv<32> >__xlx_inputA__tmp_vec;
  for (int j = 0, e = 512; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_inputA)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_inputA)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_inputA)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_inputA)[j*4+3];
    __xlx_inputA__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_inputA = 512;
  int __xlx_offset_param_inputA = 0;
  int __xlx_offset_byte_param_inputA = 0*4;
  int* __xlx_inputA__input_buffer= new int[__xlx_inputA__tmp_vec.size()];
  for (int i = 0; i < __xlx_inputA__tmp_vec.size(); ++i) {
    __xlx_inputA__input_buffer[i] = __xlx_inputA__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_inputB__tmp_vec
  vector<sc_bv<32> >__xlx_inputB__tmp_vec;
  for (int j = 0, e = 512; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_inputB)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_inputB)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_inputB)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_inputB)[j*4+3];
    __xlx_inputB__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_inputB = 512;
  int __xlx_offset_param_inputB = 0;
  int __xlx_offset_byte_param_inputB = 0*4;
  int* __xlx_inputB__input_buffer= new int[__xlx_inputB__tmp_vec.size()];
  for (int i = 0; i < __xlx_inputB__tmp_vec.size(); ++i) {
    __xlx_inputB__input_buffer[i] = __xlx_inputB__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_hist__tmp_vec
  vector<sc_bv<32> >__xlx_hist__tmp_vec;
  for (int j = 0, e = 544; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_hist)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_hist)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_hist)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_hist)[j*4+3];
    __xlx_hist__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_hist = 544;
  int __xlx_offset_param_hist = 0;
  int __xlx_offset_byte_param_hist = 0*4;
  int* __xlx_hist__input_buffer= new int[__xlx_hist__tmp_vec.size()];
  for (int i = 0; i < __xlx_hist__tmp_vec.size(); ++i) {
    __xlx_hist__input_buffer[i] = __xlx_hist__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  histogram(__xlx_inputA__input_buffer, __xlx_inputB__input_buffer, __xlx_hist__input_buffer);
// print __xlx_apatb_param_inputA
  sc_bv<32>*__xlx_inputA_output_buffer = new sc_bv<32>[__xlx_size_param_inputA];
  for (int i = 0; i < __xlx_size_param_inputA; ++i) {
    __xlx_inputA_output_buffer[i] = __xlx_inputA__input_buffer[i+__xlx_offset_param_inputA];
  }
  for (int i = 0; i < __xlx_size_param_inputA; ++i) {
    ((char*)__xlx_apatb_param_inputA)[i*4+0] = __xlx_inputA_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_inputA)[i*4+1] = __xlx_inputA_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_inputA)[i*4+2] = __xlx_inputA_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_inputA)[i*4+3] = __xlx_inputA_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_inputB
  sc_bv<32>*__xlx_inputB_output_buffer = new sc_bv<32>[__xlx_size_param_inputB];
  for (int i = 0; i < __xlx_size_param_inputB; ++i) {
    __xlx_inputB_output_buffer[i] = __xlx_inputB__input_buffer[i+__xlx_offset_param_inputB];
  }
  for (int i = 0; i < __xlx_size_param_inputB; ++i) {
    ((char*)__xlx_apatb_param_inputB)[i*4+0] = __xlx_inputB_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_inputB)[i*4+1] = __xlx_inputB_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_inputB)[i*4+2] = __xlx_inputB_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_inputB)[i*4+3] = __xlx_inputB_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_hist
  sc_bv<32>*__xlx_hist_output_buffer = new sc_bv<32>[__xlx_size_param_hist];
  for (int i = 0; i < __xlx_size_param_hist; ++i) {
    __xlx_hist_output_buffer[i] = __xlx_hist__input_buffer[i+__xlx_offset_param_hist];
  }
  for (int i = 0; i < __xlx_size_param_hist; ++i) {
    ((char*)__xlx_apatb_param_hist)[i*4+0] = __xlx_hist_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_hist)[i*4+1] = __xlx_hist_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_hist)[i*4+2] = __xlx_hist_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_hist)[i*4+3] = __xlx_hist_output_buffer[i].range(31, 24).to_uint();
  }
}
