// The file cordic.h holds definitions for the data types and constant values
#include "cordic.h"
void cordic(THETA_TYPE theta, COS_SIN_TYPE &s, COS_SIN_TYPE &c)
{
  // Set the initial vector that we will rotate
  // current_cos = I; current_sin = Q
  COS_SIN_TYPE current_cos = 0.60735;
  COS_SIN_TYPE current_sin = 0.0;
  COS_SIN_TYPE half = 1.0;
  int a;
  for(int b =0;b<NUM_ITERATIONS;b++){
	  if(theta<0)
	  {
		  a=-1;
	  }
	  else
	  {
		  a=1;
	  }
	  COS_SIN_TYPE cos_s = current_cos * a * half;
	  COS_SIN_TYPE sin_s = current_sin * a * half;
	  current_sin = current_sin + cos_s;
	  current_cos = current_cos - sin_s;
	  half=half/2;
	  theta=theta- a *cordic_phase[b];

  }
  // Set the final sine and cosine values
  s = current_sin;  c = current_cos;
}
