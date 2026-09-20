% 3dx4 example 2 
% solving a system of equations

syms A B C
eq1 = A+B == 3
eq2 = 1 == C-2*B 
eq3 = 8 == 4*A - 2*C 

sol = solve([eq1 eq2 eq3], [A B C])

pretty(sol.A)