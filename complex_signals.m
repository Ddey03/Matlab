clc;
clear all;
close all;
n=-10:10;
u=[(n)>=0];
u3=[(n-3)>=0];
xn=u-u3;
subplot(3,1,1),stem(n,u);
subplot(3,1,2),stem(n,u3);
subplot(3,1,3),stem(n,xn);