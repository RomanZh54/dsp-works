function my_Delta()
n = -20 : 19;
%x = 2 * d(n - 10);
x = 5 * d(n - 10) + 2.5 * d(n - 20);
plot(n, x);        
grid;
end

function y = d(n)
y = zeros(1, size(n, 2));         
y(size(n, 2) / 2 + 1) = 1.0; 
end
