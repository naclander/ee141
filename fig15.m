pkg load control;
graphics_toolkit("gnuplot");

H = tf([0.04 1], [1]) %K_1 = 0.04
G1 = tf([1], [0.001 1])
G2 = tf([1/20], [1/20 1 0])
F = tf([370], [1]) %K_a = 370
N = G2
D = 1 + N * G1 * F * H
step(N/D)

ylabel "y(t)";
legend "hide";
title "Step Disturbance Response";
print -F:20 -depsc fig15.eps
