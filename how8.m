%{
  �������΢������
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
%myFun ������΢�֣�������΢�ֽ���
%x0   ĳ��
%dx   �Ա����ı任
%dydx �����ĵ�����
%dy ������΢��
%new_y ����ֵ��΢�ֽ���
dy=dydx(x0)*dx;
new_y=f(x0)+dy; 
end

function change_y = getChange (x0, change_x, f)
%change_y �����仯��
change_y = f(x0+change_x)-f(x0);
end
