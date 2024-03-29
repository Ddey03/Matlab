clc; clear all; close all; 
frq = 30;
Fs = 1000;
t = 0:1/Fs:1/frq; 
x = sin(2*pi*frq*t);
X = fft(x);  
l = length(X)/2;
f = (0:(l-1))*Fs/(2*l);
subplot(311), plot(t, x);
title('Sine wave of frequency 30Hz'); 
xlabel('Time in sec');ylabel('Amplitude'); 
subplot(312), plot(f,abs(X(1:l)));
title('Magnitude Response'); ylabel('Amplitude'); 
ang=(angle(X(1:l)) * (180/pi));
subplot(313), plot(f, ang);
title('Phase Response');xlabel('Frequency in Hz'); ylabel('Angle in Degrees');
