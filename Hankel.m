function ret = Hankel(x,L,N)
length = size(x, 2);    % 获取x矩阵的列数
start = length - N + 1;
mid = length - N +L;
col_1 = x(:,start:mid);
row_end = x(:, mid : length);
ret = [];
for i = start : mid
    ii = [];
    for j = 0 : N -L
        ii = [ii x(:, i + j)];
    end
    ret = [ret ; ii];
end
