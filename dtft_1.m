
clc;
clear all;
close all;
w = [0:1:500]*[4*pi/500];
a = (0.9)*exp(j.*(pi/3-w));
x = ( 1-a.^11)./(1-a);    
subplot(121)
plot(w, abs(x)), title('Magnitude response'), xlabel('w'), ylabel('Amplitude');
subplot(122), plot(w,angle(x));
title('Phase Response'), xlabel('w(radians)'), ylabel('Angle');
