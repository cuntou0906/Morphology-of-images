function [ output ] = kaical( f , w1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% kaical()ʵ�ֿ�����
% f:����Ķ�ֵͼ��
% w1:ģ��
% output����������ͼ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output = fushi(f,w1);          %�ȸ�ʴ
output = pengzhang(output,w1); %������
end