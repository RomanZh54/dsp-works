fun_handle = @sin;          % Покажчик на функцію
X0 = 0;                     % Початок інтервалу, в якому проводитиметься
                            % дискретизація і квантування
X1 = 2 * pi;                % Кінець інтервалу, в якому проводитиметься
                            % дискретизація і квантування
bit_capacity = 8;           % Період дискретизації
sampling_time = pi / 18;    % Розрядність в бітах

[Y, X] = SamplingAndQuantization(fun_handle, X0, X1, sampling_time, bit_capacity);

% Виведення графіка функції
subplot(1, 2, 1);
fplot(fun_handle, [X0, X1]);
grid;
title('Function');
xlabel('Time [S]');
ylabel('Amplitude');

% Виведення графіка функції дискретизованого та квантованого сигналу
subplot(1, 2, 2);
stairs(X, Y);
grid;
title('Sampled and quantized signal');
xlabel('Time [S]');
ylabel('Amplitude');
