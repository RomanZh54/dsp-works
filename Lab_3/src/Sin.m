% Generating 64 samples of x(t) = sin(2 * pi * f * t) with a
% Frequency of 1 kHz, and sampling frequency of 8 kHz.
N = 64;             % Define Number of samples
n = 0 : N - 1;      % Define vector n = 0, 1, 2, 3, ... 62, 63
f = 1000;           % Define the frequency
fs = 8000;          % Define the sampling frequency
x = sin(2 * pi * (f / fs) * n);     % Generate x(t)
plot(n, x);                         % Plot x(t) vs. t
grid;
title('Sinewave [f = 1 kHz, fs = 8 kHz]');
xlabel('Sample Number');
ylabel('Amplitude');
