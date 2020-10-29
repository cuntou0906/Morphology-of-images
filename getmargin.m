function [ output] = getmargin( f , w1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% getmargin()实现对目标获取边界
% f:输入的二值图像
% w1:模板
% output：获取边界结果结果图像
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fushif = fushi(f,w1);       %求f对w1的腐蚀
output = f-fushif;          %f-腐蚀图像为边界
end