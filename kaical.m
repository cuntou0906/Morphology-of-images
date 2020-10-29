function [ output ] = kaical( f , w1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% kaical()实现开运算
% f:输入的二值图像
% w1:模板
% output：开运算后的图像
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output = fushi(f,w1);          %先腐蚀
output = pengzhang(output,w1); %后膨胀
end