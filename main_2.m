gujia_gray = imread('gujia.png');           %读入原图像
gujia_2b = Diedai(gujia_gray);              %图像二值化
[gujia_bone1,k] = getbone(gujia_2b,ones(3));%形态学骨架提取
%%%%%%   调用自定义函数，距离变换获取骨架  %%%%%%%
[gujia_bone2,margin_fgujia,dis_fgujia,...
    inter_dis_fgujia]=getbonedis(gujia_2b,ones(3),3,4);
figure(3)                                 %绘图句柄
subplot(1,2,1)                            %分割窗口
imshow(gujia_2b,[])                       %显示二值图像
title('二值图')                           %添加标题
subplot(1,2,2)                            %分割窗口
imshow(margin_fgujia,[])                  %显示边界
title('边界图像')                          %添加标题
figure(4)                                 %绘图句柄
subplot(1,2,1)                            %分割窗口
imshow(gujia_bone1,[])                    %显示形态学骨架提取
title('形态学骨架提取')                    %添加标题
subplot(1,2,2)                            %分割窗口
imshow(gujia_bone2,[])                    %距离变换法骨架提取
title('距离变换法骨架提取')                %添加标题
figure(5)                                 %绘图句柄
subplot(1,2,1)                            %分割窗口
imshow(dis_fgujia,[])                     %全局距离变换值
title('全局距离变换值')                    %添加标题
subplot(1,2,2)                            %分割窗口
imshow(inter_dis_fgujia,[])               %局部距离变换值
title('局部距离变换值')                    %添加标题