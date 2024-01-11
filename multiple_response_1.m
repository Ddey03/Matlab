clc; 
clear all; 
close all;
b = [1 0 -1];  
a = [1 -9 27 -27];

[r p k]=residuez(b,a);  
disp(['r = ' num2str(r')]);
disp(['p = ' num2str(p')]);
disp(['k = ' num2str(k')]);

[z p k] = tf2zp(b,a); % To obtain zeros , ploes and gain constant 
%of the system.
disp('Zeros are at'); disp(z); 
disp('poles are at'); disp(p); 
disp('Gain Constant is'); disp(k);
zplane(b,a); % Gives the pole – zero plot

N = 512; % Frequency resolution assumed.
[h w] = freqz(b,a,N);% returns the N-point complex frequency 
%response
%vector h and the N-point frequency vector w in radians. 
figure;
subplot(211), plot(w,abs(h)), title('Magnitude Response');

xlabel('Frequency in radians'), ylabel('Amplitude'); 
subplot(212), plot(w, angle(h)), title('Phase Response'); 
xlabel('Frequency in radians'), ylabel('Phase in radians');
n=0:10;
u=n>=0;
x=3*sin(n*pi/3).*u;
y=filter(b,a,x);
subplot(211),plot(n,x);
subplot(211),plot(n,y);