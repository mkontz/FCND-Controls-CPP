L = 1;
L2 = L / sqrt(2);
K = 0.1;

A = [ 1   1   1   1
     [1  -1  -1   1] * L2
     [1   1  -1  -1] * L2
     [1  -1   1  -1] * K];
 
 Fc = 10;
 Mx = -1.0;
 My = 0.5;
 Mz = -0.2;
 
 FM = [Fc; Mx; My; Mz]
 
 F4 = (Fc + (Mx -My) / L2 - Mz/K) /4.0;
 F3 = (Fc - My / L2) / 2.0 - F4;
 F2 = (Fc - Mx / L2) / 2.0 - F3;
 F1 = Fc - F2 - F3 - F4;
 
 FCalc = [F1; F2; F3; F4]
 
 Fexp = A \ FM
 
 Error = FCalc - Fexp