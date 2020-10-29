function [ output] = hit_nothit( f , w1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% hit_nothit()实现对图像的击中击不中变换
% f:输入的二值图像
% w1:模板
% output：结果图像
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AD = fushi(f,w1);       %求w1对f的腐蚀
Ac = transnot(f);       %求f的补集
Bc = transnot(w1);      %求w1的补集
ADc = fushi(Ac,Bc);     %求w1的补集对f的补集的腐蚀
output = min(AD,ADc);   %求击中击不中结果
end