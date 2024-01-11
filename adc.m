clc;
clear all ;
close all;
wp = 0.2*pi;
ws = 0.3*pi; 
rp = 1;%digital specification
rs = 15;
T = .1;  
wa_p = wp/T;%analog specification
wa_s = ws/T;

[Nb, wcb] = buttord(wa_p,wa_s, rp, rs, 's');
[bb_s,ab_s] = butter(Nb, wcb, 's');
disp('For Butterworth, the order and cut off frequency are '), 
disp(Nb)
disp(wcb)
[Hb,wb] = freqs(bb_s,ab_s); % Analog freq. response

[bb_z, ab_z] = impinvar(bb_s,ab_s,1/T);
[Hbd, wbd] = freqz(bb_z,ab_z); % Digital freq. response 
figure(1); plot(wbd/pi,20*log10(abs(Hbd))),grid on;%divided by pi to normalise from 0 to 1 instead of 0 to pi 
ylabel('Magnitude in dB' ) ;


