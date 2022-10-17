t = 0 : pi / 32 : 10 * pi;
%Signals
x1 = sin(2 * pi * t);
x2 = cos(t);
x3 = tan(t);

subplot(2, 3, 1);
plot(t, x1);
title('X1');
subplot(2, 3, 2);
plot(t, x2);
title('X2');
subplot(2, 3, 3);
plot(t, x3);
title('X3');

%Associative property
subplot(4, 2, 5);
plot(conv(x1, conv(x2, x3)));
title('X1 * (X2 * X3)');
subplot(4, 2, 6);
plot(conv(conv(x1, x2), x3));
title('(X1 * X2) * X3');

%Distributive property
subplot(4, 2, 7);
plot(conv(x1, x2) + conv(x1, x3));
title('X1 * X2 + X1 * X3');
subplot(4, 2, 8);
plot(conv(x1, (x2 + x3)));
title('X1 * (X2 + X3)');
