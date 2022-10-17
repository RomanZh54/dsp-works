% Generates 40 samples of a unit step signal, u(n)
N = 40;             % Define the number of samples
n = -20 : 20;       % Define a suitable discrete time axis
u = [zeros(1, (N / 2) + 1), ones(1, (N / 2))];      % Generate the signal
plot(n, u);                     % Plot the signal
axis([-20, 20, -0.5, 1.5]);     % Scale axis
grid;
title('A Unit Step Signal');
xlabel('Sample Number');
ylabel('Amplitude');
