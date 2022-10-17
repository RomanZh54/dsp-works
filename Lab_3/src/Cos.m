% Generating 64 samples of x(t) = cos(2 * pi * f * t + phi) with a
% Frequency of 25 Hz, and sampling frequency of 400 Hz.
N = 64;             % Define Number of samples
A = 1.5;            % Амплітуда
n = 0 : N - 1;      % Define vector n = 0, 1, 2, 3, ... 62, 63
f = 25;             % Define the frequency
fs = 400;           % Define the sampling frequency
phi = pi / 4;       % Фазовий зсув
x = A * cos(2 * pi * (f / fs) * n + phi);   % Generate x(t)
plot(n, x);                                 % Plot x(t) vs. t
grid;
title('Cosewave [f = 25 Hz, fs = 400 Hz]');
xlabel('Sample Number');
ylabel('Amplitude');
