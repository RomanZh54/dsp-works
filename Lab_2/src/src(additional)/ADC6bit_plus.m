fun_handle = @sin_plus;     % �������� �� �������
X0 = 0;                     % ������� ���������, � ����� ���������������
                            % ������������� � �����������
X1 = 0.03;                  % ʳ���� ���������, � ����� ���������������
                            % ������������� � �����������
bit_capacity = 6;           % ���������� � ����
sampling_time = 0.01;       % ����� �������������

[Y, X] = SamplingAndQuantization(fun_handle, X0, X1, sampling_time, bit_capacity);

% ��������� ������� �������
subplot(2, 1, 1);
fplot(fun_handle, [X0, X1]);
grid;
title('Function');
xlabel('Time [S]');
ylabel('Amplitude');

% ��������� ������� ������� ���������������� �� ������������ �������
subplot(2, 1, 2);
stem(X, Y);
grid;
title('Sampled and quantized signal');
xlabel('Time [S]');
ylabel('Amplitude');
