% 基于Sobel算子的边缘增强方法
function sobel_result = sobel_edge_enhancement(img)
    % Sobel滤波器
    Gx = [-1 0 1; -2 0 2; -1 0 1];
    Gy = [-1 -2 -1; 0 0 0; 1 2 1];

    % 使用conv2函数与滤波器进行卷积
    dx = conv2(double(img), Gx, 'same');
    dy = conv2(double(img), Gy, 'same');

    % 计算梯度幅度
    sobel_result = sqrt(dx.^2 + dy.^2);
end