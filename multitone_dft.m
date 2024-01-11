clc; 
clear all;
close all; 
f1 = 30;
f2 = 80;
f3 = 120;
Fs = 1000;
t = 0:1/Fs:1; %window length is 0 to 1 
x1 = sin(2*pi*f1*t);
x2 = sin(2*pi*f2*t);
x3 = sin(2*pi*f3*t);
m=x1+x2+x3;
X = fft(m); % fft(x, M) can be used to compute the DFT length 
l = length(X)/2;
f = (0:(l-1))*Fs/(2*l);% 0 to l-1 plot and each factor is scaled by Fs/2 and to normalise divide by 2
subplot(311), plot(t, m);
title('Sine wave'); 
xlabel('Time in sec');ylabel('Amplitude'); 
subplot(312), plot(f,abs(X(1:l)));zoom on; 
title('Magnitude Response'); ylabel('Amplitude'); 
ang=(angle(X(1:l)) * (180/pi));

subplot(313), plot(f, ang);
title('Phase Response');xlabel('Frequency in Hz'); ylabel('Angle in Degrees');

