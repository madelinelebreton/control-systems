% laplace_transform.m
% Computes laplace and inverse laplace transforms symbolically
% Author: Madeline LeBreton

clear
syms s t

% Define the function
f(t) = t*sin(3*t)

% Take the laplace transform
F(s) = laplace(f(t)) 

% Inverse Laplace transform
ilaplace(F(s))