function [ output] = transnot( mat )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% transnot()ʵ�ֶԾ������ȡ�� nan��ֵ����
% mat���������
% output��ȡ�ǽ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output = mat;                      %��ʼ���������
index1 = find(mat==1);             %�ҵ�ԭ����Ϊ1������
output(index1) = not(mat(index1)); %ȡ��
index2 = find(mat==0);             %�ҵ�ԭ����Ϊ0������
output(index2) = not(mat(index2)); %ȡ��
end