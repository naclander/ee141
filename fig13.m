pkg load control;
graphics_toolkit("gnuplot");

G1 = tf([1], [0.001 1])
G2 = tf([1/20], [1/20 1 0])
F = tf([1], [1])
N = G2
D = 1 + N * G1 * F * 1
rlocus(N/D)

title("Root Locus")
legend "hide";
axis([-25,25,-10,10])
print -F:20 -depsc fig13.eps
