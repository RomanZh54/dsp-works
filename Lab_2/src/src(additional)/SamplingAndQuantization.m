function [Y, X] = SamplingAndQuantization(fun_handle, X0, X1, sampling_time, bit_capacity)
X = X0:sampling_time:X1;
Y = uencode(fun_handle(X), bit_capacity, 1);
end
