clc; clear all; close all;
N = 5; % given order of the filter 
w = 0.2*pi; % Given cutoff frequency
[z, p, k ] = buttap(N); % Getting the prototype 
p1 = p* w;
k1 = k* w ^N; 
B = real(poly(z)); 
%b0 = k1;
b = k1*B;
a = real(poly(p1));
disp(a),disp(b);