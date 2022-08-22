總共有兩個檔案，top.v就是主程式、top_tb就是testbench，這是一個簡單的cordic實作。
Cordic簡單來說是一個“化繁爲簡”的算法，將許多複雜的運算轉化爲一種“僅需要移位和加法”的迭代操作。CORDIC算法有旋轉和向量兩個模式，而這兩者分別可以在圓座標系、線性座標系和雙曲線座標系使用，從而可以演算出8種運算，而結合這8種運算也可以衍生出其他許多運算。下表展示了8種運算在CORDIC算法中實現的條件。 

# 一、cordic幾何原理
設在xy座標系中有一個點P1（x1，y1），將P1點繞原點旋轉θ角後得到點P2（x2，y2）。 
![image](https://github.com/AudiHsieh/Verilog_Profile/blob/master/cordic/image.png)

於是可以得到P1和P2的關係。 

x2 = x1cosθ – y1sinθ = cosθ(x1 – y1tanθ) 

y2 = y1cosθ + x1sinθ = cosθ(y1 +x1tanθ) 

從原理中，我們可以知道，當已知一個點P1的座標，並已知該點P1旋轉的角度θ，則可以根據上述公式求得目標點P2的座標。
