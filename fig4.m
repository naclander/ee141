pkg load control;
graphics_toolkit("gnuplot");
G1 = tf([1], [0.001 1])
G2 = tf([1/20], [1/20 1 0])
F = tf([50], [1]) %K_a = 50
N = G2
D = 1 + N * G1 * F * 1
Step = N/D
step(Step)
print -depsc fig4.eps
