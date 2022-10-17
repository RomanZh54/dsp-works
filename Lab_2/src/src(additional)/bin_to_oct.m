function y = bin_to_oct(b)
i = size(b, 2);
n = ceil(i / 3); 

% b - двійкове число
% o - вісімкове число

for j = n : -1 : 1
    if i > 3
        o(j) = bin_to_oct_num(b(i - 2 : i));
        i = i - 3;
    else
        o(j) = bin_to_oct_num(b(1 : i));
    end
end

y = o;
