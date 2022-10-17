fun_handle = @sawt;         % Покажчик на функцію
X0 = 0;                     % Початок інтервалу, в якому проводитиметься
                            % дискретизація і квантування
X1 = 0.03;                  % Кінець інтервалу, в якому проводитиметься
                            % дискретизація і квантування
bit_capacity = 6;           % Розрядність в бітах
sampling_time = 0.01/18;    % Період дискретизації

[Y, X] = SamplingAndQuantization(fun_handle, X0, X1, sampling_time, bit_capacity);

% Виведення графіка функції
subplot(1, 3, 1);
fplot(fun_handle, [X0, X1]);
grid;
title('Function');
xlabel('Time [S]');
ylabel('Amplitude');

% Виведення графіка функції дискретизованого та квантованого сигналу
subplot(1, 3, 3);
stairs(X, Y);
grid;
title('Sampled and quantized signal');
xlabel('Time [S]');
ylabel('Amplitude');
