function [ output ] = rgb1gray(f, method)
% �ú��� g = rgb1gray(f, method). ���������ǽ�һ��
% 24 λ��RGB ͼ��, f, ת���ɻҶ�ͼ��, g. ���� method
% ��һ���ַ���������ֵΪ��average�� ʱ�����õ�һ��ת��
% ����������ֵΪ��NTSC��ʱ�����õڶ���ת��������
% ����NTSC����Ϊȱʡ��ʽ��
if nargin<2  %�������С��2����Ϊȱʡģʽ
    %���á�NTSC����ʽ���ҶȻ�ͼ��
    output=0.2989*f(:,:,1)+0.5870*f(:,:,2)+0.1140*f(:,:,3);
else
    if strcmp(method,'average')   %�ж��Ƿ�Ϊ��average����ʽ
        %���á�average����ʽ���ҶȻ�ͼ��
        output=1/3*f(:,:,1)+1/3*f(:,:,2)+1/3*f(:,:,3);
    elseif strcmp(method,'NTSC')  %�ж��Ƿ�Ϊ��NTSC����ʽ
        %���á�NTSC����ʽ���ҶȻ�ͼ��
        output=0.2989*f(:,:,1)+0.5870*f(:,:,2)+0.1140*f(:,:,3);
    end
end
end

