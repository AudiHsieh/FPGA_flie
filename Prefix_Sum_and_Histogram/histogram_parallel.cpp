#include "histogram_parallel.h"

void histogram_map(int in[INPUT_SIZE / 2], int hist[VALUE_SIZE])
{                                                      // 優化直方圖計算
#pragma HLS DEPENDENCE variable = hist intra RAW false //在讀寫之間進行切換
  for (int i = 0; i < VALUE_SIZE; i++)
  {
#pragma HLS PIPELINE II = 1 //平行化加速
    hist[i] = 0;
  }
  int old = in[0];
  int acc = 0;
  for (int i = 0; i < INPUT_SIZE / 2; i++)
  {
#pragma HLS PIPELINE II = 1 //平行化加速
    int val = in[i];
    if (old == val)
    {
      acc = acc + 1;
    }
    else
    {
      hist[old] = acc;
      acc = hist[val] + 1;
    }
    old = val;
  }
  hist[old] = acc;
}

void histogram_reduce(int hist1[VALUE_SIZE], int hist2[VALUE_SIZE], int output[VALUE_SIZE])
{ //實現還原
  for (int i = 0; i < VALUE_SIZE; i++)
  {
#pragma HLS PIPELINE II = 1
    output[i] = hist1[i] + hist2[i]; // 將兩陣列合併
  }
}

// Top level function
void histogram(int inputA[INPUT_SIZE / 2], int inputB[INPUT_SIZE / 2], int hist[VALUE_SIZE])
{
#pragma HLS DATAFLOW //流水線設計
  int hist1[VALUE_SIZE];
  int hist2[VALUE_SIZE];

  histogram_map(inputA, hist1);
  histogram_map(inputB, hist2);
  histogram_reduce(hist1, hist2, hist);
}
