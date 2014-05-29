pkg load control;
graphics_toolkit("gnuplot");

H = tf([0.04 1], [1]) % K_1 = 0.04
GG = tf([1], [0.001 1.02 20 0]); %G_1G_2 Transfer Fcuntion
F = tf([370], [1]); %K_a =370 
N = F * GG;
D = 1 + N * H;
margin(N / D);


legend "hide";
print  -depsc fig20.eps;
