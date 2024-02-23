% ����Sobel���ӵı�Ե��ǿ����
function sobel_result = sobel_edge_enhancement(img)
    % Sobel�˲���
    Gx = [-1 0 1; -2 0 2; -1 0 1];
    Gy = [-1 -2 -1; 0 0 0; 1 2 1];

    % ʹ��conv2�������˲������о��
    dx = conv2(double(img), Gx, 'same');
    dy = conv2(double(img), Gy, 'same');

    % �����ݶȷ���
    sobel_result = sqrt(dx.^2 + dy.^2);
end