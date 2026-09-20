% example 6
% nodal analysis from 4 node circuit. solving for Vc/V so we need VB

clear 
syms s va vb v

A = [1+1/(2*s)+1/(4*s), -1/(4*s);
    -1/(4*s), s+1/(4*s)+1/(3*s)]

b=[v; v*s]

x = A\b

vb = collect(simplify(x(2)))

