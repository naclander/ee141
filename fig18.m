pkg load control;
graphics_toolkit("gnuplot");

H = 1
x = 6000
GG = tf([1], [0.001 1.02 20 0]); %G_1G_2 Transfer Fcuntion
F = tf([x x], [1]); %K_a =370 
N = F * GG;
D = 1 + N * H;
step(N / D);

xlim([0 0.1])
ylabel "y(t)";
legend "hide";
print -F:20 -depsc fig18.eps;
