
clc;
clear all;
close all;
g = [1 -3 4 2 0 -2];
h = [3 0 1 -1 2 1];
G = fft(g);
H = fft(h);
w = G.*H;
y = ifft(w);
plot(y);
