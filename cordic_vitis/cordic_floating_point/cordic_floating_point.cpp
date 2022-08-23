// The file cordic.h holds definitions for the data types and constant values
#include "cordic.h"
// The cordic_phase array holds the angle for the current rotation
// cordic_phase[0] =~ 0.785
// cordic_phase[1] =~ 0.463
void cordic(THETA_TYPE theta, COS_SIN_TYPE &s, COS_SIN_TYPE &c)
{
	// Set the initial vector that we will rotate
	// current_cos = I; current_sin = Q
	COS_SIN_TYPE current_cos = 0.60735; // K最後大約收斂至0.60735
	COS_SIN_TYPE current_sin = 0.0;
	COS_SIN_TYPE half = 1.0;
	int a;
	for (int b = 0; b < NUM_ITERATIONS; b++)
	{
		if (theta < 0)
		{
			a = -1; //縱座標是否為負值，若是將a設為-1，使其迴轉。
		}
		else
		{
			a = 1;
		}
		COS_SIN_TYPE cos_s = current_cos * a * powf(0.5, b);
		COS_SIN_TYPE sin_s = current_sin * a * powf(0.5, b);
		current_sin = current_sin + cos_s; //將角度做旋轉
		current_cos = current_cos - sin_s; //將角度做旋轉
		half = half / 2;
		theta = theta - a * cordic_phase[b];
	}

	// 最後輸出
	s = current_sin;
	c = current_cos;
}
