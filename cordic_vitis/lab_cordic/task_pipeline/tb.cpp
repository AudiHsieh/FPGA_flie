/*
This is traditional CORDIC computation of sine and cosine.
The current code is based on [FXT: cordic-circ-demo.cc]
Correctly calculates cos and sine between 0-90 degrees (0-100).
INPUT:
	double theta: Input angle
	long n: Number of iterations.
OUTPUT:
	double &s: Reference to the sine part
	double &c: Reference to the cos part
	error_sin= [abs(s-zs)/zs]*100;
	error_cos= [abs(c-zc)/zc]*100;
	Total_Error_Sin = sum(error_sin)
	Total_error_Cos = sum(error_cos)
*/
#include <math.h>
#include"cordic.h"
#include <stdio.h>
#include <stdlib.h>

using namespace std;
//#define M_PI 3.1415926536897932384626

double abs_double(double var){
	if ( var < 0)
	var = -var;
	return var;


}
int main(int argc, char **argv)
{

    FILE *fp;

    hls::stream<COS_SIN_TYPE> s;			//sine
    hls::stream<COS_SIN_TYPE> c;			//cos
    hls::stream<COS_SIN_TYPE> s_radian; 		//radian versuin of degree

    COS_SIN_TYPE radian;
	//zs=sin, zc=cos using math.h in VivadoHLS
	double zs, zc; 			// sine and cos values calculated from math.

	//Error checking
	double Total_Error_Sin=0.0;
	double Total_error_Cos=0.0;
	double error_sin=0.0, error_cos=0.0;

	fp=fopen("out.dat","w");
	for(int i=1;i<NUM_DEGREE;i++) {
			radian = i*M_PI/180; s_radian.write(radian);
			cordic(s_radian, s, c);
			zs = sin((double)radian);
			zc = cos((double)radian);
			error_sin=(abs_double((double)s.read()-zs)/zs);
			error_cos=(abs_double((double)c.read()-zc)/zc);
			Total_Error_Sin=Total_Error_Sin+error_sin;
			Total_error_Cos=Total_error_Cos+error_cos;

			fprintf(fp, "degree=%d, radian=%f, cos=%f, sin=%f\n",
					i, (double)radian, (double)c.read(), (double)s.read());
	}

	fclose(fp);
	printf("\n");
	printf ("Average_Error_Sin=%f, Average_Error_Cos=%f, \n",
			Total_Error_Sin/NUM_DEGREE, Total_error_Cos/NUM_DEGREE);
	printf("\n");
	return 0;
}
