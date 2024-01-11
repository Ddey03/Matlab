clc; 
clear all; 
close all;
b = [1 -5 10];
a = [10 -5 1 ];
N = 512;
[h w] = freqz(b,a,N); 
plot(w,abs(h));
title('Magnitude Response'), xlabel('w(radians)'), ylabel('Amplitude'); 