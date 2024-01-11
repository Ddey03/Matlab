clc;
clear all;
close all;
f=100;
fs=1000;
t=0:1/fs:2/f;
u=sawtooth(2*pi*f*t,0.5);
plot(t,u);