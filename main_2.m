gujia_gray = imread('gujia.png');           %����ԭͼ��
gujia_2b = Diedai(gujia_gray);              %ͼ���ֵ��
[gujia_bone1,k] = getbone(gujia_2b,ones(3));%��̬ѧ�Ǽ���ȡ
%%%%%%   �����Զ��庯��������任��ȡ�Ǽ�  %%%%%%%
[gujia_bone2,margin_fgujia,dis_fgujia,...
    inter_dis_fgujia]=getbonedis(gujia_2b,ones(3),3,4);
figure(3)                                 %��ͼ���
subplot(1,2,1)                            %�ָ��
imshow(gujia_2b,[])                       %��ʾ��ֵͼ��
title('��ֵͼ')                           %��ӱ���
subplot(1,2,2)                            %�ָ��
imshow(margin_fgujia,[])                  %��ʾ�߽�
title('�߽�ͼ��')                          %��ӱ���
figure(4)                                 %��ͼ���
subplot(1,2,1)                            %�ָ��
imshow(gujia_bone1,[])                    %��ʾ��̬ѧ�Ǽ���ȡ
title('��̬ѧ�Ǽ���ȡ')                    %��ӱ���
subplot(1,2,2)                            %�ָ��
imshow(gujia_bone2,[])                    %����任���Ǽ���ȡ
title('����任���Ǽ���ȡ')                %��ӱ���
figure(5)                                 %��ͼ���
subplot(1,2,1)                            %�ָ��
imshow(dis_fgujia,[])                     %ȫ�־���任ֵ
title('ȫ�־���任ֵ')                    %��ӱ���
subplot(1,2,2)                            %�ָ��
imshow(inter_dis_fgujia,[])               %�ֲ�����任ֵ
title('�ֲ�����任ֵ')                    %��ӱ���