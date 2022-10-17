function y = sawt(t)
T = 0.01;
fs = 18 / 0.01;
A = 0.13;

y = A * sawtooth(2 * pi * (1 / T) * t, 1/2);
end
