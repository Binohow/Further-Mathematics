%{
  本程序用于绘制函数图像
%}
clc; clear; close all;

f1=@(x) asin(x);
f2=@(x) sin(x);
f3=@(x) x;
figure;
fplot(f1,[-1.5,1.5]);
hold on;
fplot(f2,[-1,1]);
fplot(f3,[-1,1]);
title('asin(x)、sin(x)');
