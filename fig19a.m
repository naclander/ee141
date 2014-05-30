pkg load control;
pkg load geometry;
graphics_toolkit("gnuplot");

K_1 = 371;
K_3 = K_1*2.3;
G1 = tf([1], [0.001 1]);
G2 = tf([1/20], [1/20 1 0]);
G3 = tf([1], [2.814344e-9 3.183023e-5 1]);
F = tf([K_3 K_1], [1]);
N = F * G1 * G2 * G3;
D = 1 + N;
step(N/D, [0:0.0005:1]);

axis([0 0.15 0.85 1.15])

% draw the the target line that the
% response approaches
drawLine([0 1 1 0],
         'linestyle', '--',
         'color', 'b',
         'linewidth', 4);

% draw the the 2% line that the
% plot needs to stay above
drawLine([0 0.98 1 0],
         'linestyle', '--',
         'color', 'r',
         'linewidth', 4);

% draw the the 5% line that the
% plot needs to stay below
drawLine([0 1.05 1 0],
         'linestyle', '--',
         'color', 'r',
         'linewidth', 4);

title "step response, satisfying t_s < 250 ms"
legend "hide";
ylabel "";
print -F:20 -depsc fig19a.eps;
