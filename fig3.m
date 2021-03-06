pkg load control;
graphics_toolkit("gnuplot");

GG = tf([1], [0.001 1.02 20 0]); %G_1G_2 Transfer Fcuntion
F = tf([400], [1]); %K_a = 400
N = F * GG;
D = 1 + N;
step(N / D);

ylabel "y(t)";
legend "hide";
print -F:20 -depsc fig3.eps;
