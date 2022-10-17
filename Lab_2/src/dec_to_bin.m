function y = dec_to_bin(x)
disp('Decimal:')
x
a = x;
y = 0;
b = [];
while (a ~= 0)
    b = [b, mod(a, 2)];
    a = fix(a / 2);
end
    disp('Binary:')
    y = [b(length(b):-1:1)];
end
