% 基于[1,-1]梯度算子的边缘增强方法
function custom_result = custom_edge_enhancement(img)
    % 定义[1,-1]及其转置滤波器
    H = [1, -1];
    V = H';

    % 使用conv2函数与滤波器进行卷积
    dx = conv2(double(img), H, 'same');
    dy = conv2(double(img), V, 'same');

    % 计算梯度幅度
    custom_result = sqrt(dx.^2 + dy.^2);
end