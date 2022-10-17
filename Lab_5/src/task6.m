t = 0 : 1 / (2 * pi * 16) : 2 * pi;
a = sin(t) + sin(20 * t);
bb = zeros(1, 1200);
 
for i = 251 : size(a, 2) + 250;
    bb(i) = bb(i) + a(i - 250);
end
b = awgn(bb, 0.5, 'measured');
ac = fliplr(a);

Nac = size(ac, 2);
Mb = size(bb, 2);
c = zeros(1, Nac + Mb - 1);
for k = 1 : Nac + Mb - 1
    for j = max(1, k + 1 - Nac) : 1 : min(k, Mb);
       c(k) = c(k) +(bb(j) * ac(k - j + 1));
    end 
end

subplot (1, 3, 1);
plot(a);
grid on;

subplot (1, 3, 2);
plot(b);
grid on;

subplot (1, 3, 3);
plot(c);
grid on;
