function [ output] = cut( f  , k)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% cut()ʵ�ֶ�ͼ��Ĳü�
% f:����Ķ�ֵͼ��
% k:ϸ������
% output���ü����ͼ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
kerl1 = [nan 0 0;1 1 0;nan 0 0];  %����˸�ģ��
kerl2 = rot90(kerl1);
kerl3 = rot90(kerl2);
kerl4 = rot90(kerl3);
kerl5 = [1 0 0;0 1 0;0 0 0];
kerl6 = rot90(kerl5);
kerl7 = rot90(kerl6);
kerl8 = rot90(kerl7);
frea = f;
for i = 1:k                      %��8��ģ�����k��ϸ��
    f = xihua(f,kerl1);f = xihua(f,kerl2);
    f = xihua(f,kerl3);f = xihua(f,kerl4);
    f = xihua(f,kerl5);f = xihua(f,kerl6);
    f = xihua(f,kerl7);f = xihua(f,kerl8);
end
x2 = zeros(size(f));             %����˵�
x2 = max(x2,hit_nothit(f,kerl1));
x2 = max(x2,hit_nothit(f,kerl2));
x2 = max(x2,hit_nothit(f,kerl3));
x2 = max(x2,hit_nothit(f,kerl4));
x2 = max(x2,hit_nothit(f,kerl5));
x2 = max(x2,hit_nothit(f,kerl6));
x2 = max(x2,hit_nothit(f,kerl7));
x2 = max(x2,hit_nothit(f,kerl8));
H = ones(3);
x3 = min(frea,pengzhang(x2,H));
output = max(f,x3);              %��ü���Ľ��
end



