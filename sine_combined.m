clc;
clear all;
close all;
f1=10;
f2=30;
f3=60;
t=0:.001:.5
s1=sin(2*pi*f1*t);
s2=sin(2*pi*f2*t);
s3=sin(2*pi*f3*t);
subplot(4,1,1),plot(t,s1);
subplot(4,1,2),plot(t,s2);
subplot(4,1,3),plot(t,s3);
s=s1+s2+s3;
subplot(4,1,4),plot(t,s);