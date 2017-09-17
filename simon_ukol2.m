% UKOL #2
% Daniel Simon

clear all

interval_x = linspace(-3,3,50);
interval_y = linspace(-3,3,50);
[X,Y]=meshgrid(interval_x,interval_y);
funkce_z = cos(X+Y).*cos(3*X-Y)+cos(X-Y).*sin(X+3*Y)+5.*exp(-(X^2+Y^2)/8);


figure 

subplot(1,2,1)
mesh(interval_x, interval_y, funkce_z);
xlabel('x')
ylabel('y')
zlabel('z')
title('mesh')

subplot(1,2,2)
surf(interval_x, interval_y, funkce_z);
xlabel('x')
ylabel('y')
zlabel('z')
title('surf')