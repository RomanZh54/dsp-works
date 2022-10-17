t = 0 : 1 / (5 * pi) : 4;
x = sin(2 * pi * t);
h1 = [0 0.0055 0.0109 0.0162 0.0214 0.0262 0.0309 0.0351 0.0390 0.0425...
    0.0455 0.0480 0.0499 0.0514 0.0522 0.0525 0.0522 0.0514 0.0499...
    0.0480 0.0455 0.0425 0.0390 0.0351 0.0309 0.0262 0.0214 0.0162...
    0.0109 0.0055 0.0000];
h2 = [0 -0.0055 -0.0109 -0.0162 -0.0214 -0.0262 -0.0309 -0.0351 -0.0390...
    -0.0425 -0.0455 -0.0480 -0.0499 -0.0514 -0.0522 0.9475 -0.0522...
    -0.0514 -0.0499 -0.0480 -0.0455 -0.0425 -0.0390 -0.0351 -0.0309...
    -0.0262 -0.0214 -0.0162 -0.0109 -0.0055 -0.0000];
h3 = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
h4 = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
N = size(x, 2);

%Signal h1
M1 = size(h1, 2);
y1 = zeros(1, N + M1 - 1);
for k = 1 : N + M1 - 1
    for i = max(1, k + 1 - N) : 1 : min(k, M1);
       y1(k) = y1(k) + (h1(i) * x(k - i + 1)); 
    end 
end
subplot(4, 3, 1);
plot(x);
grid on
title('X');
subplot(4, 3, 2);
plot(h1);
grid on
title('H1');
subplot(4, 3, 3);
plot(y1);
grid on
title('Y1');

%Signal h2
M2 = size(h2, 2);
y2 = zeros(1, N + M2 - 1);
for k = 1 : N + M2 - 1
    for i = max(1, k + 1 - N) : 1 : min(k, M2);
       y2(k) = y2(k) + (h2(i) * x(k - i + 1)); 
    end 
end
subplot(4, 3, 4);
plot(x);
grid on
title('X');
subplot(4, 3, 5);
plot(h2);
grid on
title('H2');
subplot(4, 3, 6);
plot(y2);
grid on
title('Y2');

%Signal h3
M3 = size(h3, 2);
y3 = zeros(1, N + M3 - 1);
for k = 1 : N + M3 - 1
    for i = max(1, k + 1 - N) : 1 : min(k, M3);
       y3(k) = y3(k) + (h3(i) * x(k - i + 1)); 
    end 
end
subplot(4, 3, 7);
plot(x);
grid on
title('X');
subplot(4, 3, 8);
plot(h3);
grid on
title('H3');
subplot(4, 3, 9);
plot(y3);
grid on
title('Y3');

%Signal h4
M4 = size(h4, 2);
y4 = zeros(1, N + M4 - 1);
for k = 1 : N + M4 - 1
    for i = max(1, k + 1 - N) : 1 : min(k, M4);
       y4(k) = y4(k) + (h4(i) * x(k - i + 1)); 
    end 
end
subplot(4, 3, 10);
plot(x);
grid on
title('X');
subplot(4, 3, 11);
plot(h4);
grid on
title('H4');
subplot(4, 3, 12);
plot(y4);
grid on
title('Y4');
