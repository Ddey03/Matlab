clc; 
close all; 
clear all;
x = [3,11,7,0,-1,4,2]; 
nx = -3:3;
ny = nx + 2; 
w = randn(1, length(x));
y = x + w;
nyb = ny(1)+nx(1); % Starting point 
nye = ny(length(x))+nx(length(x)); % Ending point 
ny = nyb:nye;
xcr = xcorr(x,y); % cross-correlation 
stem(ny,xcr);
title('Cross-correlation example'); 
xlabel('Time, n');