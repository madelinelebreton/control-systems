% example 9
% mechanical system w 2 DOF

clear
syms j1 t theta1 theta2 k1 k2 d1 d2 s

%eq1 = t == theta1*(k1+d1*s+j1*s^2)-theta2*(k1+d1*s)
%eq2 = 0 == -theta1*(d1*s+k1)+theta2*((d1+d2)*s+(k1+k2*s))

result = solve([eq1, eq2], [theta1, theta2])

result.theta2 = subs(result.theta2, {k1, k2, d1, d2, j1}, {1, 1, 1, 1, 1})
result.theta2 = simplify(result.theta2)