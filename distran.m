function [ output] = distran( f , a , b )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% distran()ʵ�ֶ�ͼ��� ����任
% f:����Ķ�ֵͼ��
% output���Ǽ���ȡ���ͼ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
index = find(f==0);                    %��ȡf����0������λ��
f(index)= 5000*(ones(length(index),1)); %����Ԫ�طŴ�5000
for ii=2:size(f,1)                     %ģ��1���ϵ��£��������ƶ�
    for jj=2:size(f,2)-1
            temp0=f(ii,jj);            %����ģ����ͼ���Ӧλ�ú͵���Сֵ
            temp1=min(f(ii,jj-1)+a,temp0);
            temp2=min(f(ii-1,jj-1)+b,temp1);
            temp3=min(f(ii-1,jj)+a,temp2);
            temp4=min(f(ii-1,jj+1)+b,temp3);
            f(ii,jj)=temp4;
        
    end
end
for ii=size(f,1)-1:-1:1               %ģ��1���ϵ��£��������ƶ�
    for jj=size(f,2)-1:-1:2 
            temp0=f(ii,jj);           %����ģ����ͼ���Ӧλ�ú͵���Сֵ
            temp1=min(f(ii,jj+1)+a,temp0);
            temp2=min(f(ii+1,jj+1)+b,temp1);
            temp3=min(f(ii+1,jj)+a,temp2);
            temp4=min(f(ii+1,jj+1)+b,temp3);
            f(ii,jj)=temp4;
    end
end
output = round(f(:,2:end-1)/3);       %ȡ�� �����
end