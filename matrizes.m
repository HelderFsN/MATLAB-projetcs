clear; clc;
syms x y(x)

y(x) = x.^2;
dy_dx = diff(y(x),x);
fplot(y(x),[-40,40])
hold on 
x0 = 15;
y0 = y(x0);
D(x0) = subs(dy_dx,x,x0)
y = D(x0)*(x-x0)+y0
fplot(y,[-40,40])
hold off
grid



