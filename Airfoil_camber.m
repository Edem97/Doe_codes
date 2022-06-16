%CODE TO PLOT AN AIRFOIL FOR NACA2412

c = input('what is your maximum camber: ');
m = input('what is the position of your maximum camber: ');
t = input('what is your maximum thickness ratio: ');
%% This is part one of the airfoil
xa = 0:0.001:m;
Y1 = (c ./ (m.^2)) .* ((2.*m.* xa) - (xa.^2)) ; %% camber line part one
y1 = 5.* t.*( (0.2969 .*sqrt(xa)) - (0.126.*xa) - (0.3516.*xa.^2) + (0.2843.*xa.^3)- (0.1015.*xa.^4) );
ya = Y1 + y1;
plot(xa,ya)

%% This is part two of the airfoil 
xb = m:0.001:1;
Y2 = (c ./ (1 -m)^2) .*(1 - (2.*m) + (2.*m.*xb) - (xb.^2) ) ; %% camber line part two
y1 = 5.* t.*( (0.2969 .*sqrt(xb)) - (0.126.*xb) - (0.3516.*xb.^2) + (0.2843.*xb.^3)- (0.1015.*xb.^4) );
yb = Y2 + y1;
plot(xb,yb)

%% This is part three of the airfoil
Y1 = (c ./ (m.^2)) .* ((2.*m.* xa) - (xa.^2)) ; %% camber line part one
y2 = -5.* t.*( (0.2969 .*sqrt(xa)) - (0.126.*xa) - (0.3516.*xa.^2) + (0.2843.*xa.^3)- (0.1015.*xa.^4) );
yc = Y1 + y2;
plot(xa,yc)

%% This is part four of the aerofoil
y2 = -5.* t.*( (0.2969 .*sqrt(xb)) - (0.126.*xb) - (0.3516.*xb.^2) + (0.2843.*xb.^3)- (0.1015.*xb.^4) );
Y2 = (c./ (1 -m)^2) .*(1 - (2.*m) + (2.*m.*xb) - (xb.^2) ) ; %% camber line part two
yd = y2 + Y2;
plot(xb,yd)

plot(xa,ya,xb,yb,xa,yc,xb,yd) %% this plots the whole airfoil in four parts

daspect([1 1 1])
grid('on') %% this turns on the grid
xlabel('x/c')
ylabel('y/c')
title('NACA2412 AIRFOIL')

% maximum camber = 0.02
% position of maximum camber = 0.4
% maximum thickness = 0.12

