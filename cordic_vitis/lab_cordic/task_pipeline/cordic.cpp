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
   /******************************************
   *   Your Code Here
   *****************************************/
}
