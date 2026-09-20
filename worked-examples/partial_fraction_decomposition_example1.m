% example 2 part frac decomp
clear
syms x

F(x) = (3*x^2+x+8)/((x-2)*(x^2+4))
partfrac(F(x))