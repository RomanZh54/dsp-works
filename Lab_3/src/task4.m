Fs = 10e3;
t = -0.1 : 1 / Fs : 0.1;
A = 1;
w = 60e-3;
ofset = 0;
ofsety = 0.4;

s = A * tripuls(t - ofset, w);
for i = 1 : size(s, 2)
    if(s(i) > ofsety)
        s(i) = ofsety;
    end
end

plot(t, s);
axis([-0.05, 0.05, 0, 0.45])
