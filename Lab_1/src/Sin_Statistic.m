fs = 960;       % Sample frequency
t = 0:1/fs:1;   % Time interval 1s
A = 2;          % Amplitude
N = fs;
OffSet = 3.05;  							% Offset
%x = A * sin(2 * pi * t * 6) + OffSet;       % Generating Sin signal
x = A * square(2 * pi * t * 6) + OffSet;   	% Generating Square signal
%x = A * sawtooth(2 * pi * t * 6) + OffSet;  % Generating Sawtooth signal
m = mean(x);            					% Calculating mean
%SD_Teor = A/sqrt(2)    					 % Theoretical standard deviation
SD_Teor = sqrt(sum((x - m).^2) / (N - 1))   % Theoretical standard deviation
SD_Real = std(x)       						% Real standard deviation
plot(t, x);
grid;
title('Function');
xlabel('Time [S]');
ylabel('Amplitude');
legend(sprintf('mean = %.2f', m));
