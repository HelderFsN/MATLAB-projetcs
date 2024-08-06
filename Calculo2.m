% syms k l
% x = linspace(-5,5,100)
% y = linspace(-5,5,100)
% 
% f = k^2 + l^2
% 
% [x,y] = meshgrid(x,y);
% f_xy = x.^2+y.^2;
% 
% %z = diff(fx)*(x-30) + diff(fy)*(y-30)
% surf(x,y,f_xy);
% 
% u1 = linspace(0,4*pi,90)
% v1 = linspace(0,2*pi,90)
% [u,v] = meshgrid(u1,v1)
% 
% x = (2 + sin(v)).*cos(u);
% y = (2 + sin(v)).*sin(u);
% z = u + cos(v);
% surf(x,y,z)
% 
% syms x
% fx = exp(0.1*x)
% figure(1), clf
% fplot(fx), hold on

syms x y z(x,y)
z(x,y) = atan(x/y)
dz_dx = diff(z(x,y),y)
