function [ output,k] = getbone( f , w1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% getbone()ʵ�ֶ�ͼ��ĹǼ���ȡ
% f:����Ķ�ֵͼ��
% w1:ģ��
% output���Ǽ�ͼ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output = zeros(size(f));        %��ʼ���Ǽ�ͼ��
k = 0;                          %ͳ�Ƶ�������
while sum(sum(f,1),2)~=0        %��fδ����ʴ�ռ�����������
 sk = f - min(f,(kaical(f,w1)));%�����м���sk
 output = max(output,sk);       %����ǰk�β���
 k = k + 1;                     %���µ�������
 f = fushi(f,w1);               %��f���и�ʴ
end
output = double(output);
end