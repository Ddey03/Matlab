clc; 
clear all; 
close all;
a = [1 0 -0.81]; 
b = [1 -1 0];  
y = [2 2 0]; 
x = [1/0.7 0 0]; 
xic = filtic(b,a,y,x);
ax = [1 -0.7]; bx = [1]; 
ay = conv(a, ax);
by = conv(b, bx) + conv(xic,ax);
[R, p, C] = residuez(by, ay);
disp('Residues '), disp( R), disp('Ploes '), disp( p), disp('Direct Term '), disp(C);