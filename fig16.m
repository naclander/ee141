pkg load control;
graphics_toolkit("gnuplot");
H = 1
x = 210
G1 = tf([1], [0.001 1])
G2 = tf([1/20], [1/20 1 0])
F = tf([x x], [1])
N = G2
D = 1 + N * G1 * F * H
Step = N/D
step(Step)
print -depsc fig16.eps
