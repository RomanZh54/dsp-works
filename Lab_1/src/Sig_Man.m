% Program demonstrating Basic Signal Manipulation
N = 128;
f1 = 150;
f2 = 450;
f3 = 1500;
fs = 8000;
n = 0 : N - 1;
x1 = sin(2 * pi * (f1 / fs) * n);
x2 = (1 / 3) * sin(2* pi * (f2 / fs) * n);
x3 = sin(2 * pi * (f3 / fs) * n);
figure(1);
subplot(1, 1, 1);
subplot(3, 3, 1);
plot(n, x1);
grid;
title('Signal, x1(n)');
subplot(3, 3, 2);
plot(n, x2);
grid;
title('Signal, x2(n)');
subplot(3, 3, 3);
plot(n, x3);
grid;
title('Signal, x3(n)');
% Signal Delay
x1d = [zeros(1, 20), x1(1 : N - 20)];
subplot(3, 3, 4);
plot(n, x1d);
grid;
title('Delayed x(n), [x1(n - 20)]');
% Signal Addition
xadd = x1 + x2;
subplot(3, 3, 5);
plot(n, xadd);
grid;
title('x1(n) + x2(n)');
% Signal Multiplication
xmult = x1 .* x3;
subplot(3, 3, 6);
plot(xmult);
grid;
title('x1 * x3');

% Signal Delay
x2d = [zeros(1, 35), x2(1 : N - 35)];
subplot(3, 3, 7);
plot(n, x2d);
grid;
title('Delayed x(n), [x2(n - 35)]');

% Signal Addition
xadd = x2 + x3;
subplot(3, 3, 8);
plot(n, xadd);
grid;
title('x2(n) + x3(n)');

% Signal Multiplication
xmult = x1 .* x2;
subplot(3, 3, 9);
plot(xmult);
grid;
title('x1 * x2');
