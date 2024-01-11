clc; 
clear all; 
close all;
b = [0.634 0 0.634];
a = [1 0 0.268 ];
N = 512;
[h w] = freqz(b,a,N); 
plot(w,abs(h));
title('Magnitude Response'), xlabel('w(radians)'), ylabel('Amplitude'); 