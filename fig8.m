pkg load control;
graphics_toolkit("gnuplot");

G1 = tf([1], [0.001 1])
G2 = tf([1/20], [1/20 1 0])
F = tf([220], [1]) %K_a = 220
N = G2
D = 1 + N * G1 * F * 1
step(N/D)

axis([0 0.6 -0.0005 0.006]);
title "K_a = 220"
ylabel "y(t)";
legend "hide";
print -F:20 -depsc fig8.eps
