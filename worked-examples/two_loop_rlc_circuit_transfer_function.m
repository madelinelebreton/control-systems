% example 4
% circuit with two parallel loops

clear 
syms v r1 r2 vc c l s i1 i2 g

% set up matrix equation [LHS coeffecients][i1 i2] = [RHS]
A = [r1+l*s, -l*s;
     -l*s, r2+1/(c*s)+l*s]
%x = [i1; i2]
b = [v; 0]

% Ax=b -> x=A^-1*b = A\b
x = A\b

i1 = simplify(x(1));
pretty(i1)

i2 = simplify(x(2));
pretty(i2)

% solve for transfer fn G=Vc/V where Vc=I2/Cs
vc=i2/(c*s)
g=vc/v

g=simplify(g)
g=collect(g)
pretty(g)
gmod=collect(simplify(g*c*l*(r1+r2)))
pretty(gmod)

% how to sub in values: H_num = subs(H, {R1,R2,L,C}, {10,20,0.5,100e-6});




