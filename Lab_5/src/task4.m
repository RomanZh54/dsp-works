t = 0 : 1 / (2 * pi * 16) : 4 * pi;
x = sin(t) + sin(20 * t);
h1 = [0.2718 0.1649 0.1396 0.1284 0.1221 0.1181 0.1154 0.1133 0.1118...
    0.1105 0.1095 0.1087 0.1080 0.1074 0.1069 0.1064 0.1061 0.1057...
    0.1054 0.1051 0.1049];
h2 = [0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0 0 0 0 0 0 0 0 0 0 0];
h3 = [0.2000 0.1920 0.1691 0.1345 0.0932 0.0506 0.0121 -0.0178 -0.0366...
    -0.0434 -0.0395 -0.0278 -0.0119 0.0041 0.0170 0.0243 0.0253 0.0205...
    0.0116 0.0010 -0.0087];
N = size(x, 2);

%Signal h1
M1 = size(h1, 2);
h1 = d(1, M1) - h1;
y1 = zeros(1, N + M1 - 1);
for k = 1 : N + M1 - 1
    for i = max(1, k + 1 - N) : 1 : min(k, M1);
       y1(k) = y1(k) + (h1(i) * x(k - i + 1)); 
    end 
end
subplot(3, 3, 1);
plot(x);
grid on
title('X');
subplot(3, 3, 2);
plot(h1);
grid on
title('H1');
subplot(3, 3, 3);
plot(y1);
grid on
title('Y1');

%Signal h2
M2 = size(h2, 2);
h2 = d(1, M2) - h2;
y2 = zeros(1, N + M2 - 1);
for k = 1 : N + M2 - 1
    for i = max(1, k + 1 - N) : 1 : min(k, M2);
       y2(k) = y2(k) + (h2(i) * x(k - i + 1)); 
    end 
end
subplot(3, 3, 4);
plot(x);
grid on
title('X');
subplot(3, 3, 5);
plot(h2);
grid on
title('H2');
subplot(3, 3, 6);
plot(y2);
grid on
title('Y2');

%Signal h3
M3 = size(h3, 2);
h3 = d(1, M3) - h3;
y3 = zeros(1, N + M3 - 1);
for k = 1 : N + M3 - 1
    for i = max(1, k + 1 - N) : 1 : min(k, M3);
       y3(k) = y3(k) + (h3(i) * x(k - i + 1)); 
    end 
end
subplot(3, 3, 7);
plot(x);
grid on
title('X');
subplot(3, 3, 8);
plot(h3);
grid on
title('H3');
subplot(3, 3, 9);
plot(y3);
grid on
title('Y3');
