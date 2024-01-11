clc; 
clear all; 
close all;
b = [0.16 -0.48 0.48 -0.16];
a = [1 0.13 0.52 0.3];
N = 512;
[h w] = freqz(b,a,N); 
plot(w,abs(h));
title('Magnitude Response'), xlabel('w(radians)'), ylabel('Amplitude'); 
