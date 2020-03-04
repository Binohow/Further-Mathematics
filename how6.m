%{
  
%}
clc; clear; close all;
f=@(x)(1+x)*(abs(x)<1)+0*(abs(x)>1|x==-1)+1*(x==1);
figure,fplot(f);
f2=@(x)(2*x-1)*exp(1/x);
figure,ezplot(f2);
hold on 
h=ezplot('y=2*x+1');
delete(get(gca,'title'))
set(h, 'color', 'red');
figure,fplot(f2,[-6,6])
syms x; % be careful performance issue.
f3=(2*x-1)*exp(1/x)-2*x;
limit(f3,x,Inf);
figure,fimplicit(f3,[-10000,10000]);
figure,fplot(f3,[-10000,10000])
figure,ezplot(f3);