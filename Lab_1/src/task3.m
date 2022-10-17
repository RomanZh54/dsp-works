function y = task3 (x)

N = size(x, 2);
[m, n] = size(x);
   if (~((m == 1) | (n == 1)) | (m == 1 & n == 1)) 
   	error('¬х≥дний масив маЇ бути вектором')
   end 
TE = (sqrt(1 / (N - 1) * (sum(x.^2) - ((sum(x).^2) / N))) / sqrt(N))
