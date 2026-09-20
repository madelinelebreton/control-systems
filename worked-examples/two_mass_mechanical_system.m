% mechanical system with 2 blocks
% write all variables

clear 
syms x1 x2 f k1 k2 k3 fv1 fv2 fv3 s m1 m2

% write down newtons law for each fbd
eq1 = (k1+k2)*x1+(fv1+fv3)*s*x1+m1*s^2*x1 == fv3*s*x2+k2*x2+f 
eq2 = x1*(fv3*s+k2) == x2*(k3+k2+s*(fv2+fv3)+m2*s^2)

% solve for x1 and x2
solns = solve([eq1, eq2], [x1, x2])

% solve for transfer fn
g = collect(solns.x2/f)
