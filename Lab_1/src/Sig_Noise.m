A = 6;
fs = 350;
OffSet = 5.05;
t = 0:.01:2;                                % Time vector for 2s
x = A * sawtooth(2 * pi * t) + OffSet;      % Generation sin wave
snr = -3;                                   % SNR = -3 dB
y = awgn(x, snr, 'measured');               % Add white noise 
m = mean(y);
dev = std(y);
plot(t, x, t, y);                           % plot both signals
legend('Original signal', 'Signal with Noise');
