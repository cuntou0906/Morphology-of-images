function [ output ] = rgb1gray(f, method)
% 该函数 g = rgb1gray(f, method). 函数功能是将一幅
% 24 位的RGB 图像, f, 转换成灰度图像, g. 参数 method
% 是一个字符串，当其值为’average’ 时，采用第一种转换
% 方法，当其值为’NTSC’时，采用第二种转换方法。
% 将’NTSC’做为缺省方式。
if nargin<2  %输入参数小于2，即为缺省模式
    %采用‘NTSC’方式，灰度化图像
    output=0.2989*f(:,:,1)+0.5870*f(:,:,2)+0.1140*f(:,:,3);
else
    if strcmp(method,'average')   %判断是否为‘average’方式
        %采用‘average’方式，灰度化图像
        output=1/3*f(:,:,1)+1/3*f(:,:,2)+1/3*f(:,:,3);
    elseif strcmp(method,'NTSC')  %判断是否为‘NTSC’方式
        %采用‘NTSC’方式，灰度化图像
        output=0.2989*f(:,:,1)+0.5870*f(:,:,2)+0.1140*f(:,:,3);
    end
end
end

