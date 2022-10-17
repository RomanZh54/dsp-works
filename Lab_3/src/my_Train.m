t = 0 : 0.1 : 1000;     
d = [0 : 200 : 1000]'; 
y = pulstran(t, d, 'sinc');
plot(t,y)
grid;
