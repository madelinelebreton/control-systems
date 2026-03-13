% Laplace transform
clear
syms s t
f(t) = t*sin(3*t)
F(s) = laplace(f(t))

% Inverse Laplace transform
ilaplace(F(s))