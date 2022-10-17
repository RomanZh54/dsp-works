function [y, xi] = task5()
xi = 0 : 0.2 : 16;
x = @sin;
y = x(xi) + randn(1, length(xi)) / 5;
plot(y)
end
