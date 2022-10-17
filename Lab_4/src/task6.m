t = (0 : 0.1 : 10)';
x = sin(t);
y = awgn(x, 5, 'measured');
plot(t, [x y])
