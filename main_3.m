timg_rgb = imread('timg.jpg');            %读入原图像
timg_gray = rgb1gray(timg_rgb);           %灰度图像
timg_2b = Diedai(timg_gray);              %图像二值化
timg_2b = not(timg_2b);                   %二值化取反，目标点为1
[timg_bone1,k] = getbone(timg_2b,ones(3));%形态学骨架提取
[timg_cut] = cut(timg_2b,2);              %对二值图像进行裁剪
timg_de = timg_2b-min(timg_2b,timg_cut);  %求取裁剪算法所裁剪的“枝条”
%%%%%%   调用自定义函数，距离变换获取骨架  %%%%%%%
[timg_bone2,margin_f,dis_f,inter_dis_f]=getbonedis(timg_2b,ones(3),3,4);
figure(10)                                %绘图句柄
subplot(2,2,1)                            %分割窗口
imshow(timg_bone1,[])                      %显示形态学骨架提取图像
title('形态学骨架提取图像')                %添加标题
subplot(2,2,2)                            %分割窗口
imshow(timg_bone2,[])                     %显示距离变换法骨架提取
title('距离变换法骨架提取')                %添加标题
subplot(2,2,3)                            %分割窗口
imshow(timg_cut,[])                       %显示裁剪结果
title('裁剪结果')                          %添加标题
subplot(2,2,4)                            %分割窗口
imshow(not(timg_de),[])                   %显示所裁剪的“枝条”
title('裁剪算法所裁剪的“枝条”')           %添加标题