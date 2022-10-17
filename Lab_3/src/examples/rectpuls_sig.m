Fs = 1e3;
t = -40e-3 : 1 / Fs : 40e-3;
T = 20e-3;
A = 5;
s = -A * rectpuls(t, T);
plot(t, s);
ylim([-6 6]);
