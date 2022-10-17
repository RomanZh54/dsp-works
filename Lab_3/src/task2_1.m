fs = 150;
t = 0 : 1 / fs : 1;
x = 0.5 * cos(2 * pi * t * 3) + 0.125 * cos(2 * pi * t * 180);
plot(t, x);
grid on
