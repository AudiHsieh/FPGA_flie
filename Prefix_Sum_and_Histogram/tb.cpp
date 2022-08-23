#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include "histogram_parallel.h"


void histogram_golden(int in[INPUT_SIZE], int hist[VALUE_SIZE]) {
  int val;
  for(int i = 0; i < INPUT_SIZE; i++) {
    val = in[i];
    hist[val] = hist[val] + 1;
  }
}

int main() {
	srand( time(NULL) );
	int fail = 0;
	int values[1024] ;
	int y_sw[VALUE_SIZE] = {};
    int y[VALUE_SIZE] = {};

    for(int i=0;i<1024;i++){
    	values[i]=i;
    }


	histogram_golden(values, y_sw);
    histogram(values, values+INPUT_SIZE/2, y);

	for(int i = 0; i < INPUT_SIZE; i++)
		if(y_sw[i] != y[i]) {
            printf("%d %d %d", i, y_sw[i], y[i]);
			fail = 1;
        }

	if(fail == 1)
		printf("FAILED\n");
	else
		printf("PASS\n");

	return fail;
}
