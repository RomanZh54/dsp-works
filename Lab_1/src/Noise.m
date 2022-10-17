N = 128;
R = (2 * pi).*rand(1, N) - pi;
m = sum(R) / N
SD = sqrt(sum((R - m).^2) / (N - 1))
figure(1);
subplot(1, 2, 1);
plot(R);
grid;
title('Uniformly Distributed Random Signal');
xlabel('Sample Number');
ylabel('Amplitude');
subplot(1, 2, 2);
hist(R);
title('Histogram [Pdf] of uniformly random signal');
xlabel('Sample Number');
ylabel('Total');
