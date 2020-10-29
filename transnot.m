function [ output] = transnot( mat )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% transnot()实现对矩阵进行取非 nan的值不变
% mat：输入矩阵
% output：取非结果
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output = mat;                      %初始化结果矩阵
index1 = find(mat==1);             %找到原矩阵为1的索引
output(index1) = not(mat(index1)); %取反
index2 = find(mat==0);             %找到原矩阵为0的索引
output(index2) = not(mat(index2)); %取反
end