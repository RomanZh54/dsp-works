fun_handle = @sin;          % �������� �� �������
X0 = 0;                     % ������� ���������, � ����� ���������������
                            % ������������� � �����������
X1 = 2 * pi;                % ʳ���� ���������, � ����� ���������������
                            % ������������� � �����������
bit_capacity = 8;           % ����� �������������
sampling_time = pi / 18;    % ���������� � ����

[Y, X] = SamplingAndQuantization(fun_handle, X0, X1, sampling_time, bit_capacity);

% ��������� ������� �������
subplot(1, 2, 1);
fplot(fun_handle, [X0, X1]);
grid;
title('Function');
xlabel('Time [S]');
ylabel('Amplitude');

% ��������� ������� ������� ���������������� �� ������������ �������
subplot(1, 2, 2);
stairs(X, Y);
grid;
title('Sampled and quantized signal');
xlabel('Time [S]');
ylabel('Amplitude');
