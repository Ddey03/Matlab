clc;
clear all;
close all;
n=0:10;
u=[(n)>=0];
v=[(n-10)>=0];
p=u-v;
w=power(0.5,n);
h=w.*p;
a=power(0.8,n)
b=[(n-5)>=0];
c=u-b;
x=a.*c;
y=conv(h,x);
stem(y);