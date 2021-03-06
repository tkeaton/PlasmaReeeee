function [Bx, By, Bz] = B_test()
%B_TEST Summary of this function goes here
%   Detailed explanation goes here
syms x y z
mu_0_red = 10^-7;
m = [0,0,11.];
r = [x, y, z];
B = mu_0_red *((dot(m,r)/norm(r)^3*r) + m/norm(r)^3);
Bx = matlabFunction(B(1));
By = matlabFunction(B(2));
Bz = matlabFunction(B(3));
end

