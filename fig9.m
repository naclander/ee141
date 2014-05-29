pkg load control;
graphics_toolkit("gnuplot");

G3 = tf([1], [2.814344e-9 3.183023e-5 1]);
step(G3);

ylabel "y(t)";
legend "hide";
title "";
xbounds = xlim()
set(gca, 'xtick', xbounds(1):0.0002:xbounds(2))
print -F:20 -depsc fig9.eps;
