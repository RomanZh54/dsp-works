% Generating 64 Samples of a unit impulse signal
N = 64;                     % Define the number of samples
n = -(N / 2) : ((N / 2) - 1); 	% Define a vector of sample numbers
x = zeros(1, N);            % Define a vector of zeros
x((N / 2) + 1) = 1.0;       % Make the first sample to be 1 (i.e.at t = 0)
plot(n, x);                 % Plot the impulse
grid;
title('A Unit Impulse Signal');
xlabel('Sample Number');
ylabel('Amplitude');
