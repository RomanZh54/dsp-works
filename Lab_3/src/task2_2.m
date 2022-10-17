Fs = 4e3;
t = 0 : 1 / Fs : 1;
t = t';
A = 1;
f0 = 1e3;
alpha = 1e3;

s1 = A * sin(2 * pi * f0 * t);
s2 = exp(-alpha * t) .* s1;

subplot(2, 2, 1);
plot(s2(1: 100))
subplot(2, 2, 2);
plot(s2(1 : 100), '.')
subplot(2, 2, 3);
stem(s2(1 : 100))
subplot(2, 2, 4);
stairs(s2(1 : 100))
