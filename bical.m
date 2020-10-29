function [ output ] = bical( f , w1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% kaical()实现闭运算
% f:输入的二值图像
% w1:模板
% output：闭运算的图像
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output = pengzhang(f,w1);  %先膨胀
output = fushi(output,w1); %后腐蚀
end