pkg load control;
graphics_toolkit("gnuplot")
A = (1*1)*0.001;
B = (1*1/1 + 20*0.001/(1));
C = 20/(1);
D = 0;
num = 1;
den = [A B C D];
sys = tf(num,den);
step(sys);
print -depsc fig1.eps;
