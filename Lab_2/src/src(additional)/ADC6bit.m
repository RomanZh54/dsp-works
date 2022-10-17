fun_handle = @sawt;         % �������� �� �������
X0 = 0;                     % ������� ���������, � ����� ���������������
                            % ������������� � �����������
X1 = 0.03;                  % ʳ���� ���������, � ����� ���������������
                            % ������������� � �����������
bit_capacity = 6;           % ���������� � ����
sampling_time = 0.01/18;    % ����� �������������

[Y, X] = SamplingAndQuantization(fun_handle, X0, X1, sampling_time, bit_capacity);

% ��������� ������� �������
subplot(1, 3, 1);
fplot(fun_handle, [X0, X1]);
grid;
title('Function');
xlabel('Time [S]');
ylabel('Amplitude');

% ��������� ������� ������� ���������������� �� ������������ �������
subplot(1, 3, 3);
stairs(X, Y);
grid;
title('Sampled and quantized signal');
xlabel('Time [S]');
ylabel('Amplitude');
