pkg load control;
graphics_toolkit("gnuplot");
GG = tf([1], [0.001 1.02 20 0]); %G_1G_2 Transfer Fcuntion
F = tf([50], [1]); %K_a = 50
N = F*GG;
D = 1 + N;
Step = N/D;
step(Step);
print -depsc fig2.eps;
