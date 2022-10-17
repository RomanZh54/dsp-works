function y = task2 (x)

N = size(x, 2);
[m, n] = size(x);
   if (~((m == 1) | (n == 1)) | (m == 1 && n == 1)) 
   	error('¬х≥дний масив маЇ бути вектором')
   end 
       	y = sum(x) / length(x);
        m_Teor = sum(x) / N
        m_Real = mean(x)
        SD_Teor = sqrt(sum((x - m_Teor).^2) / (N - 1))
        SD_Real = std(x)
