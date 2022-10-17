% Generating train of pulse

% Time vector for sample frequency 50 kHz
t = 0 : 1 / 50e3 : 10e-3;

% Delay frequency for pulse 1 kHz. Amplitude attenuate by 0.8
d = [0 : 1 / 1e3 : 10e-3; 0.8 .^ (0 : 10)]';

% Generating Gauspuls with frequency 10 kHz and bandwidth 50%
y = pulstran(t, d, 'gauspuls', 10e3, 0.5);

plot(t, y)
grid;
title('PulseTrain Function');
xlabel('Time [ms]');
ylabel('Amplitude');
