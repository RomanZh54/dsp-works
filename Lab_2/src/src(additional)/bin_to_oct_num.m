function y = bin_to_oct_num(x)
switch x
    case {'000', '00', '0'}
        y = 0;
    case {'001', '01', '1'}
        y = 1;
    case {'010', '10'}
        y = 2;
    case {'011', '11'}
        y = 3;
    case {'100'}
        y = 4;
    case {'101'}
        y = 5;
    case {'110'}
        y = 6;
    case {'111'}
        y = 7;
end
