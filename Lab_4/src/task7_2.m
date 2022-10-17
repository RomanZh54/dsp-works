t = 0 : 1 / 15 : 1;

sig = cos(2 * pi * 2 * t)
symmetry_even = zeros(1, 16);
symmetry_odd  = zeros(1, 16);
Ymin = min(sig) - 1;
Ymax = max(sig) + 1;

for i = 1 : 16
   even_symmetry(i) = (sig(i) + sig(17 - i)) / 2;
   odd_symmetry(i)  = (sig(i) - sig(17 - i)) / 2;
end

subplot(3, 1, 1);
plot(t, sig);
axis([0 1 Ymin Ymax]);
grid on;

subplot(3, 1, 2);
plot(t, even_symmetry);
xlabel('Even Symmetry') 
axis([0 1 Ymin Ymax]);
grid on;

subplot(3, 1, 3);
plot(t, odd_symmetry);
xlabel('Odd Symmetry') 
axis([0 1 Ymin Ymax]);
grid on; 
