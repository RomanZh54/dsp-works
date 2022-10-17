x = randn(1, 10000);

m = mean(x)
SD = std(x)

subplot(1, 2, 1);
plot(x);
subplot(1, 2, 2);
hist(x);
