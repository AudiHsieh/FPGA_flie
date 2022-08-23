// The file cordic.h holds definitions for the data types and constant values
#include "cordic.h"

void one_stage(
		int stage,
		hls::stream<COS_SIN_TYPE> &s_current_cos,
		hls::stream<COS_SIN_TYPE> &s_current_sin,
		hls::stream<COS_SIN_TYPE> &s_current_theta,

		hls::stream<COS_SIN_TYPE> &s_output_cos,
		hls::stream<COS_SIN_TYPE> &s_output_sin,
		hls::stream<COS_SIN_TYPE> &s_output_theta
){

	COS_SIN_TYPE current_cos = s_current_cos.read();
	COS_SIN_TYPE current_sin = s_current_sin.read();
	COS_SIN_TYPE theta = s_current_theta.read();

	COS_SIN_TYPE cos_shift = current_cos >> stage;
	COS_SIN_TYPE sin_shift = current_sin >> stage;

	if(theta >= 0) {

		COS_SIN_TYPE c = current_cos - sin_shift;
		COS_SIN_TYPE s = current_sin + cos_shift;
		COS_SIN_TYPE t = theta - cordic_phase[stage];
		s_output_cos.write(c);
		s_output_sin.write(s);
		s_output_theta.write(t);

	} else {
		COS_SIN_TYPE c = current_cos + sin_shift;
		COS_SIN_TYPE s = current_sin - cos_shift;
		COS_SIN_TYPE t = theta + cordic_phase[stage];
		s_output_cos.write(c);
		s_output_sin.write(s);
		s_output_theta.write(t);
	}

}


void cordic(
		hls::stream<COS_SIN_TYPE> &in_theta,
		hls::stream<COS_SIN_TYPE> &out_s,
		hls::stream<COS_SIN_TYPE> &out_c)
{

#pragma HLS DATAFLOW
#pragma HLS ALLOCATION instances=one_stage limit=16 function

	hls::stream<COS_SIN_TYPE> Stage0_COS, Stage0_Sin;
	hls::stream<COS_SIN_TYPE> Stage1_COS, Stage1_Sin, Theta2;
	hls::stream<COS_SIN_TYPE> Stage2_COS, Stage2_Sin, Theta3;
	hls::stream<COS_SIN_TYPE> Stage3_COS, Stage3_Sin, Theta4;
	hls::stream<COS_SIN_TYPE> Stage4_COS, Stage4_Sin, Theta5;
	hls::stream<COS_SIN_TYPE> Stage5_COS, Stage5_Sin, Theta6;
	hls::stream<COS_SIN_TYPE> Stage6_COS, Stage6_Sin, Theta7;
	hls::stream<COS_SIN_TYPE> Stage7_COS, Stage7_Sin, Theta8;
	hls::stream<COS_SIN_TYPE> Stage8_COS, Stage8_Sin, Theta9;
	hls::stream<COS_SIN_TYPE> Stage9_COS, Stage9_Sin, Theta10;
	hls::stream<COS_SIN_TYPE> Stage10_COS, Stage10_Sin, Theta11;
	hls::stream<COS_SIN_TYPE> Stage11_COS, Stage11_Sin, Theta12;
	hls::stream<COS_SIN_TYPE> Stage12_COS, Stage12_Sin, Theta13;
	hls::stream<COS_SIN_TYPE> Stage13_COS, Stage13_Sin, Theta14;
	hls::stream<COS_SIN_TYPE> Stage14_COS, Stage14_Sin, Theta15;


	Stage0_COS.write(0.60735), Stage0_Sin.write(0.0);

  one_stage(0,Stage0_COS, Stage0_Sin, in_theta,
		       Stage1_COS, Stage1_Sin, Theta2);

  one_stage(1, Stage1_COS, Stage1_Sin, Theta2,
  		       Stage2_COS, Stage2_Sin, Theta3);

  one_stage(2, Stage2_COS, Stage2_Sin, Theta3,
  		       Stage3_COS, Stage3_Sin, Theta4);

  one_stage(3, Stage3_COS, Stage3_Sin, Theta4,
  		       Stage4_COS, Stage4_Sin, Theta5);

  one_stage(4, Stage4_COS, Stage4_Sin, Theta5,
  		       Stage5_COS, Stage5_Sin, Theta6);

  one_stage(5, Stage5_COS, Stage5_Sin, Theta6,
  		       Stage6_COS, Stage6_Sin, Theta7);

  one_stage(6, Stage6_COS, Stage6_Sin, Theta7,
  		       Stage7_COS, Stage7_Sin, Theta8);

  one_stage(7, Stage7_COS, Stage7_Sin, Theta8,
  		       Stage8_COS, Stage8_Sin, Theta9);

  one_stage(8, Stage8_COS, Stage8_Sin, Theta9,
    		   Stage9_COS, Stage9_Sin, Theta10);

  one_stage(9, Stage9_COS, Stage9_Sin, Theta10,
        	   Stage10_COS, Stage10_Sin, Theta11);

  one_stage(10, Stage10_COS, Stage10_Sin, Theta11,
		  Stage11_COS, Stage11_Sin, Theta12);

  one_stage(11, Stage11_COS, Stage11_Sin, Theta12,
		  Stage12_COS, Stage12_Sin, Theta13);

  one_stage(12, Stage12_COS, Stage12_Sin, Theta13,
               Stage13_COS, Stage13_Sin, Theta14);

  one_stage(13, Stage13_COS, Stage13_Sin, Theta14,
		  out_c, out_s, Theta15);


  Theta15.read();
}
