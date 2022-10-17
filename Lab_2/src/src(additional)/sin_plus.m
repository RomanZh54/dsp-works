function y = sin_plus(t)
T = 0.001;
fs = 100;
A = 1;

y = A * sin(2 * pi * (1 / T) * t);
end
