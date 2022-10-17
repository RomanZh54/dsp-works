mean = 7;
sd = 12;
x = -18:.1:7;

size1 = length(x);
y = mean + sd.*randn(1, length(x));
plot (x, y, 'y');
hist(y)
