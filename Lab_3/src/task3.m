Fs = 10000;
t = -0.05 : 1 / Fs : 0.05;
T = 0.02;
A = 5;

s = -A * rectpuls(t + T / 2, T) + A * rectpuls(t - T / 2, T);

plot(t, s)
axis([-0.05, 0.05, -6, 6])
