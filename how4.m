%{
    
%}
clc; clear; close all;
syms x;
f1=(x^2-1)/(x^2-3*x+2);
f2=0;
f3=1;
figure,fplot(f1);
hold on;
fplot(f2);
hold on;
fplot(f3);
result1=limit(f1,x,Inf);
result2=limit(f1,x,-Inf);