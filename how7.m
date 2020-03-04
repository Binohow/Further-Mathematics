%{
    本程序练习使用 diff() 函数求导数
%}
syms x
g=str2sym('x+(y(x))^3-1=0');
diff(g)
dgdx=diff(g,x);
dgdx1=subs(dgdx,str2sym('diff(y(x), x)'),str2sym('dydx'));
dydx=solve(dgdx1, str2sym('dydx'));
pretty(dydx)
