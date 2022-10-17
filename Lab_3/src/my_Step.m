function my_Step()
n = -20 : 20;
%x = u(n) - u(n - 1);
x = u(n - 1) - u(n - 5);
plot(n, x);
grid;
end

function y = u(n)
y = zeros(1, size(n, 2));
for i = 1 : size(n, 2)
    if(n(i) >= 0)
        y(i) = 1;
    end
end
end
