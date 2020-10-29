function [output,margin_f,dis_f,inter_dis_f] = getbonedis( f,w1,a,b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% getbone_dis() 获取局部最大值
% f:输入的二值图像
% a,b:分别为模板的里元素的值
% w1:边界获取是腐蚀图像所用模板
% output：获取边界结果结果图像
% margin_f:目标的边界
% disf：全局距离变换
% inter_dis_f: 局部距离变换
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
margin_f = getmargin(f,w1);       %获取边界函数
dis_f = distran(margin_f,a,b);    %就是距离变换值
inter_dis_f = dis_f.*f(:,2:end-1);           %计算内部的距离值
[sizex,sizey] = size(inter_dis_f);
centerf = zeros(sizex+2,sizey+2);
centerf(2:end-1,2:end-1) = inter_dis_f;
output = zeros(sizex,sizey);
for i = 1:sizex
    for j = 1:sizey
        if(centerf(i+1,j+1)>0)
        temp1 = centerf(i+1,j+1)>=centerf(i,j);
        temp2 = centerf(i+1,j+1)>=centerf(i,j+1);
        temp3 = centerf(i+1,j+1)>=centerf(i,j+2);
        temp4 = centerf(i+1,j+1)>=centerf(i+1,j);
        temp5 = centerf(i+1,j+1)>=centerf(i+1,j+2);
        temp6 = centerf(i+1,j+1)>=centerf(i+2,j+0);
        temp7 = centerf(i+1,j+1)>=centerf(i+2,j+1);
        temp8 = centerf(i+1,j+1)>=centerf(i+2,j+2);
        output(i,j) = temp1*temp2*temp3*temp4*temp5*temp6*temp7*temp8;
        end
    end
end
end