function [y] = d(x, n)
for j = 1 : 1 : n;
    if j == x;
        y(j) = 1;
    else
        y(j) = 0;
    end
end
end
