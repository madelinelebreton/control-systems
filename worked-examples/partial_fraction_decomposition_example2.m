clear 
syms s
Y(s) = 1/ ((s*(s+2)^2*(s+1)))
result = partfrac(Y(s))
pretty(result)