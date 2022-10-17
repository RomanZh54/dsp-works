m = 0;
sd = 1;
x = -4:.1:4;
subplot(2, 1, 1)
P = 1 / (sqrt(2 * pi) * sd) * exp(-(x - m).^2 / 2 * sd.^2);
plot (x, P, 'r');
subplot(2,1,2)
P = @(x) 1 / (sqrt(2 * pi) * sd) * exp(-(x - m).^2 / 2 * sd.^2);
fplot (P, [-4, 4], 'g');
