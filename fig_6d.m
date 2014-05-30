pkg load control;
graphics_toolkit("gnuplot");

K_1 = 371;
K_3 = K_1*2.3;
G1 = tf([1], [0.001 1]);
G2 = tf([1/20], [1/20 1 0]);
G3 = tf([1], [2.814344e-9 3.183023e-5 1]);
F = tf([K_3 K_1], [1]);
N = F * G1 * G2 * G3;
D = 1 + N;
margin(N/D);

title ""
legend "hide";
ylabel "";
print -depsc fig_6d.eps;
