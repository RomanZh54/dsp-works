mas = sin(0 : 3 * pi / 15 : 3 * pi)
x = 0 : 1 : 15;
subplot(3, 1, 1);
plot(x, mas);
xlim([0; 15]);
ylim([-1; 1]);
grid on;
even = zeros(1, 16);
odd = zeros(1, 16);
for i = 1 : 16
    if(mod(i, 2) ~= 0)
        odd(i) = mas(i);
    else
        even(i) = mas(i);
    end
end

subplot(3, 1, 2);
plot(x, even);
xlabel('Even')
xlim([0; 15]);
ylim([-1; 1]);
grid on;

subplot(3, 1, 3);
plot(x, odd);
xlabel('Odd')
xlim([0; 15]);
ylim([-1; 1]);
grid on;
