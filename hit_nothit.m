function [ output] = hit_nothit( f , w1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hit_nothit()ʵ�ֶ�ͼ��Ļ��л����б任
% f:����Ķ�ֵͼ��
% w1:ģ��
% output�����ͼ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AD = fushi(f,w1);       %��w1��f�ĸ�ʴ
Ac = transnot(f);       %��f�Ĳ���
Bc = transnot(w1);      %��w1�Ĳ���
ADc = fushi(Ac,Bc);     %��w1�Ĳ�����f�Ĳ����ĸ�ʴ
output = min(AD,ADc);   %����л����н��
end