fun_handle = @sin_plus;     % Покажчик на функцію
X0 = 0;                     % Початок інтервалу, в якому проводитиметься
                            % дискретизація і квантування
X1 = 0.03;                  % Кінець інтервалу, в якому проводитиметься
                            % дискретизація і квантування
bit_capacity = 6;           % Розрядність в бітах
sampling_time = 0.01;       % Період дискретизації

[Y, X] = SamplingAndQuantization(fun_handle, X0, X1, sampling_time, bit_capacity);

% Виведення графіка функції
subplot(2, 1, 1);
fplot(fun_handle, [X0, X1]);
grid;
title('Function');
xlabel('Time [S]');
ylabel('Amplitude');

% Виведення графіка функції дискретизованого та квантованого сигналу
subplot(2, 1, 2);
stem(X, Y);
grid;
title('Sampled and quantized signal');
xlabel('Time [S]');
ylabel('Amplitude');
