%{
  解决函数微分问题
%}
clc; clear; close all;
syms x; % be careful performance issue.
f1 = @(x) x^3 - x;
dfdx_syms = diff(f1,x);
dfdx = matlabFunction(dfdx_syms);

[dy,new_y]=getDy(2,1,dfdx,f1)
change_y=getChange(2,1,f1)

[dy,new_y]=getDy(2,0.1,dfdx,f1)
change_y=getChange(2,0.1,f1)

[dy,new_y]=getDy(2,0.01,dfdx,f1)
change_y=getChange(2,0.01,f1)

function [dy,new_y] = getDy(x0,dx,dydx,f)
%myFun 求函数的微分，及函数微分近似
%x0   某点
%dx   自变量的变换
%dydx 函数的导函数
%dy 函数的微分
%new_y 函数值的微分近似
dy=dydx(x0)*dx;
new_y=f(x0)+dy; 
end

function change_y = getChange (x0, change_x, f)
%change_y 求函数变化量
change_y = f(x0+change_x)-f(x0);
end
