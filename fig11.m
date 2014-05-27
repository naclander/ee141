pkg load control;
graphics_toolkit("gnuplot");

K_1 = 500
K_3 = K_1
G1 = tf([1], [0.001 1])
G2 = tf([1/20], [1/20 1 0])
G3 = tf([1], [2.814344e-9 3.183023e-5 1])
F = tf([K_3 K_1], [1])
N = F * G1 * G2 * G3
D = 1 + N
bode(N/D)

title(["K_1 = K_3 = " num2str(K_1)])
legend "hide";
print -F:15 -depsc fig11.eps
