timg_rgb = imread('timg.jpg');            %读入原图像
timg_gray = rgb1gray(timg_rgb);           %灰度图像
timg_2b = Diedai(timg_gray);              %图像二值化
timg_2b = not(timg_2b);                   %二值化取反，目标点为1
kerl1 = [1 1 1;1 1 1;1 1 1];              %模板
timg_fushi = fushi(timg_2b,kerl1);        %腐蚀图像
timg_pengzhang = pengzhang(timg_2b,kerl1);%膨胀图像
timg_kaical = kaical(timg_2b,kerl1);      %开运算图像
timg_bical = bical(timg_2b,kerl1);        %闭运算图像
timg_rely = bical(timg_kaical,kerl1);     %先开运算 后闭运算
figure(1)                                 %绘图句柄
subplot(2,2,1)                            %分割绘图窗口
imshow(timg_rgb)                          %显示原图
title('原图像')                           %添加标题
subplot(2,2,2)                            %分割绘图窗口
imshow(timg_gray)                         %显示灰度图
title('灰度图像')                          %添加标题
subplot(2,2,3)                            %分割绘图窗口
imshow(not(timg_2b))                      %显示迭代法 --二值化图像
title('迭代法--二值化图像')                %添加标题
subplot(2,2,4)                            %分割绘图窗口
imshow(not(timg_rely))                    %显示开运算、闭运算图像
title('开运算、后闭运算图像')              %添加标题
figure(2)                                 %绘图句柄
subplot(2,2,1)                            %分割绘图窗口
imshow(not(timg_fushi))                   %显示腐蚀图像
title('腐蚀后的图像')                      %添加标题
subplot(2,2,2)                            %分割绘图窗口
imshow(not(timg_pengzhang))               %显示膨胀图像
title('膨胀后的图像')                      %添加标题
subplot(2,2,3)                            %分割绘图窗口
imshow(not(timg_kaical))                  %显示开运算图像
title('开运算的图像')                      %添加标题
subplot(2,2,4)                            %分割绘图窗口
imshow(not(timg_bical))                   %显示闭运算图像
title('闭运算的图像')                      %添加标题