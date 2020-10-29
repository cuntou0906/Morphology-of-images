function [ output] = xihua( f , w1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% xihua()实现对图像的细化
% f:输入的二值图像
% w1:模板
% output：细化结果图像
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AD = hit_nothit(f,w1);       %击中击不中变换
Ac = transnot(AD);           %求击中击不中的补集
output = min(Ac,f);          %求细化结果
end