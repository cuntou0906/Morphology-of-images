function [ output , thread1 ] = Diedai( f )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Diedai():���õ�����Ѱ��ͼ�����ֵ
% f ����ͼ��
% output ���ͼ��
% thread1 ��ֵ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fmax = max(max(f));                            %����������ص�
fmin = min(min(f));                            %������С����ֵ
thread0 = double((fmax+fmin)/2);               %������ֵ��ʼֵ
%%%%%%%    �ֱ��������ֵС�ڵ���k�ʹ���k������ƽ��ֵ %%%%%%%%%
aver_0_k = sum(f(find(f<=thread0)))/(length(find(f<=thread0)));
aver_k_255 =  sum(f(find(f>thread0)))/(length(find(f>thread0)));
thread1 = 0.5*(aver_k_255+aver_0_k);           %������ֵ
while abs(double(thread1-thread0))>=0.0000001  %��������
    thread0 = thread1;                         %����ǰһ����ֵ
    %%%%%%%    �ֱ��������ֵС�ڵ���k�ʹ���k������ƽ��ֵ %%%%%%%%%
    aver_0_k = sum(f(find(f<=thread0)))/(length(find(f<=thread0)));
    aver_k_255 =  sum(f(find(f>thread0)))/(length(find(f>thread0)));
    thread1 = 0.5*(aver_k_255+aver_0_k);       %���µ�ǰ��ֵ
end
output = zeros(size(f));
output(find(f>thread1)) = 1;                   %������ֵ����Ϊ��ɫ
output(find(f<=thread1)) = 0;                  %С����ֵ����Ϊ��ɫ
%output = f;                                   %��fֵ��ֵ���������
end

