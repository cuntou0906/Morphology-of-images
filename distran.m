function [ output] = distran( f , a , b )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% distran()实现对图像的 距离变换
% f:输入的二值图像
% output：骨架提取结果图像
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
index = find(f==0);                    %获取f等于0的像素位置
f(index)= 5000*(ones(length(index),1)); %背景元素放大5000
for ii=2:size(f,1)                     %模板1从上到下，从左到右移动
    for jj=2:size(f,2)-1
            temp0=f(ii,jj);            %计算模板与图像对应位置和的最小值
            temp1=min(f(ii,jj-1)+a,temp0);
            temp2=min(f(ii-1,jj-1)+b,temp1);
            temp3=min(f(ii-1,jj)+a,temp2);
            temp4=min(f(ii-1,jj+1)+b,temp3);
            f(ii,jj)=temp4;
        
    end
end
for ii=size(f,1)-1:-1:1               %模板1从上到下，从左到右移动
    for jj=size(f,2)-1:-1:2 
            temp0=f(ii,jj);           %计算模板与图像对应位置和的最小值
            temp1=min(f(ii,jj+1)+a,temp0);
            temp2=min(f(ii+1,jj+1)+b,temp1);
            temp3=min(f(ii+1,jj)+a,temp2);
            temp4=min(f(ii+1,jj+1)+b,temp3);
            f(ii,jj)=temp4;
    end
end
output = round(f(:,2:end-1)/3);       %取整 求距离
end