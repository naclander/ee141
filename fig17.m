pkg load control;
pkg load geometry;
graphics_toolkit("gnuplot");

H = 1
x = 643
GG = tf([1], [0.001 1.02 20 0]); %G_1G_2 Transfer Fcuntion
F = tf([x x], [1]); %K_a =370 
N = F * GG;
D = 1 + N * H;
step(N / D);

xlim([0 1])
ylim([0.9 1])

% draw the the 2% line that the
% plot needs to stay above
drawLine([0 0.98 1 0],
         'linestyle', '--',
         'color', 'r',
         'linewidth', 6);

ylabel "y(t)";
legend "hide";
print -F:20 -depsc fig17.eps;
