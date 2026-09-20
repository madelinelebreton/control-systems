% evaluate F at s=-3+4j
clear
s = tf('s')

F = (s + 1) / (s * (s + 2));

s1 = evalfr(F, -3 + 1j*4)

M = abs(s1)
theta = angle(s1);

theta_deg = theta * 180 / pi