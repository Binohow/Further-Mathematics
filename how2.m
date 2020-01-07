%{
    本程序用于绘制分段函数
%}
clc; clear; close all;

f1=@(x) abs(sin(x))*(abs(x)<2*pi)+0*(abs(x)>=2*pi);
figure;
fplot(f1,[-3*pi,pi*3],10000);
title('分段函数');
figure;
f2=@(x) x+log(x);
f3=@(x) x;
f4=@(x) log(x);
fplot(f2,[-1000,1000]);
hold on;
fplot(f3,[-1000,1000]);
fplot(f4,[-1000,1000]);
title('y=x+log(x)');

