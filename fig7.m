pkg load control;
graphics_toolkit("gnuplot");

G1 = tf([1], [0.001 1])
G2 = tf([1/20], [1/20 1 0])
F = tf([200], [1]) %K_a = 200
N = G2
D = 1 + N * G1 * F * 1
step(N/D)

axis([0 0.6 -0.0005 0.006]);
ylabel "y(t)";
legend "hide";
print -F:20 -depsc fig7.eps
