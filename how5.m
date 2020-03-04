%{
  
%}
clc; clear; close all;
syms x; % be careful performance issue.
f=exp(1/x);
f1=0;
fplot(f,[-10000,10000]);

f2=exp(2*x)+1;
f3=2*x+2;
limit(f2/f3,0);

f4=(exp(1/x)-1)/(exp(1/x)+1);
limit(f4,x,0);
