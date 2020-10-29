function [ output,k] = getbone( f , w1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% getbone()实现对图像的骨架提取
% f:输入的二值图像
% w1:模板
% output：骨架图像
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output = zeros(size(f));        %初始化骨架图像
k = 0;                          %统计迭代次数
while sum(sum(f,1),2)~=0        %当f未被腐蚀空集、继续运算
 sk = f - min(f,(kaical(f,w1)));%计算中间结果sk
 output = max(output,sk);       %计算前k次并集
 k = k + 1;                     %更新迭代次数
 f = fushi(f,w1);               %对f进行腐蚀
end
output = double(output);
end