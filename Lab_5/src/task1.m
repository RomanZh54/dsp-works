a = zeros(1, 81);
c = zeros(1, 81);
for i = 10 : 70
    a(i) = a(i - 1) + 0.05;
end
t = 0 : pi / 10 : 6 * pi;
b = cos(t);
for i = 10 : 70
    c(i) = a(i)- b(i - 9);
end
plot(c);
grid on
