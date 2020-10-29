function [ output ] = pengzhang( f , w1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% pengzhang()实现对图像的膨胀 0是目标 1是背景
% f:输入的二值图像
% w1:膨胀模板
% output：膨胀后的图像
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 [wx,wy]=size(w1);                      %求w1矩阵的大小
 [fx,fy]=size(f);                       %求f矩阵的大小
 Paddingf = zeros(fx+wx-1,fy+wy-1);     %初始化填充图像矩阵
                                        %将原图矩阵覆盖至填充图像矩阵相应位置
 Paddingf((wx+1)/2:(wx+1)/2+fx-1,(wy+1)/2:(wy+1)/2+fy-1)=f(:,:);
 output=zeros(fx,fy);                   %初始化腐蚀图像矩阵
  for i = (wx+1)/2:(wx+1)/2+fx-1        %循环计算
     for j = (wy+1)/2:(wy+1)/2+fy-1
                                        %逐个点计算膨胀结果
                                        %利用NaN来计算不需要考虑的模板上的点
        imt = min(Paddingf(i-(wx-1)/2:i+(wx-1)/2,j-(wy-1)/2:j+(wy-1)/2),w1);
        in_result = sum(sum(imt(find(isnan(imt)==0)),2),1);
        output(i-(wx-1)/2,j-(wy-1)/2) = (in_result ~=0);
     end
 end
end