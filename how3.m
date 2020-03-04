%{
    本程序用于求极限
%}
clc; clear; close all;
syms x n real;
f=x*cot(x);
limit(f,x,0);
fplot(f);
f1=2^n.*sin(x*2^(-n));
limit(f1,n,Inf);
f2=(1-x)^(1/x);
limit(f2,x,0);
f3=(1+2*x)^(1/x);
limit(f3,x,0); 
f4=((1+x)/x)^(2*x);
limit(f4,x,Inf); 
syms k postive; % be careful performance issue.
f5=(1-1/x)^(k*x);
limit(f5,x,Inf); 
