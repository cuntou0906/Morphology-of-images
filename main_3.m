timg_rgb = imread('timg.jpg');            %����ԭͼ��
timg_gray = rgb1gray(timg_rgb);           %�Ҷ�ͼ��
timg_2b = Diedai(timg_gray);              %ͼ���ֵ��
timg_2b = not(timg_2b);                   %��ֵ��ȡ����Ŀ���Ϊ1
[timg_bone1,k] = getbone(timg_2b,ones(3));%��̬ѧ�Ǽ���ȡ
[timg_cut] = cut(timg_2b,2);              %�Զ�ֵͼ����вü�
timg_de = timg_2b-min(timg_2b,timg_cut);  %��ȡ�ü��㷨���ü��ġ�֦����
%%%%%%   �����Զ��庯��������任��ȡ�Ǽ�  %%%%%%%
[timg_bone2,margin_f,dis_f,inter_dis_f]=getbonedis(timg_2b,ones(3),3,4);
figure(10)                                %��ͼ���
subplot(2,2,1)                            %�ָ��
imshow(timg_bone1,[])                      %��ʾ��̬ѧ�Ǽ���ȡͼ��
title('��̬ѧ�Ǽ���ȡͼ��')                %��ӱ���
subplot(2,2,2)                            %�ָ��
imshow(timg_bone2,[])                     %��ʾ����任���Ǽ���ȡ
title('����任���Ǽ���ȡ')                %��ӱ���
subplot(2,2,3)                            %�ָ��
imshow(timg_cut,[])                       %��ʾ�ü����
title('�ü����')                          %��ӱ���
subplot(2,2,4)                            %�ָ��
imshow(not(timg_de),[])                   %��ʾ���ü��ġ�֦����
title('�ü��㷨���ü��ġ�֦����')           %��ӱ���