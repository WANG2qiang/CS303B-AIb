% ����[1,-1]�ݶ����ӵı�Ե��ǿ����
function custom_result = custom_edge_enhancement(img)
    % ����[1,-1]����ת���˲���
    H = [1, -1];
    V = H';

    % ʹ��conv2�������˲������о��
    dx = conv2(double(img), H, 'same');
    dy = conv2(double(img), V, 'same');

    % �����ݶȷ���
    custom_result = sqrt(dx.^2 + dy.^2);
end