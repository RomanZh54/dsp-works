mas = cos(0 : 3 * pi / 15 : 3 * pi)
d = zeros(16, 16);
t = 0 : 1 : 15;

subplot(6, 3, 1);
plot(t, mas);
xlim([0; 15]);
ylim([-1; 1]);

for i = 1 : 16
    for j = 1 : 16
        if(i ~= 1)
            if(i < j)
                d(i, j) = mas(i) - mas(i - 1);
            else
                d(i, j) = 0;
            end
        else
            d(i, j) = mas(i);
        end
   
    end
    
    subplot(6, 3, i + 1);
    plot(t, d(i, :));
    xlim([0; 15]);
    ylim([-1; 1]);
end
