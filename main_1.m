timg_rgb = imread('timg.jpg');            %����ԭͼ��
timg_gray = rgb1gray(timg_rgb);           %�Ҷ�ͼ��
timg_2b = Diedai(timg_gray);              %ͼ���ֵ��
timg_2b = not(timg_2b);                   %��ֵ��ȡ����Ŀ���Ϊ1
kerl1 = [1 1 1;1 1 1;1 1 1];              %ģ��
timg_fushi = fushi(timg_2b,kerl1);        %��ʴͼ��
timg_pengzhang = pengzhang(timg_2b,kerl1);%����ͼ��
timg_kaical = kaical(timg_2b,kerl1);      %������ͼ��
timg_bical = bical(timg_2b,kerl1);        %������ͼ��
timg_rely = bical(timg_kaical,kerl1);     %�ȿ����� �������
figure(1)                                 %��ͼ���
subplot(2,2,1)                            %�ָ��ͼ����
imshow(timg_rgb)                          %��ʾԭͼ
title('ԭͼ��')                           %��ӱ���
subplot(2,2,2)                            %�ָ��ͼ����
imshow(timg_gray)                         %��ʾ�Ҷ�ͼ
title('�Ҷ�ͼ��')                          %��ӱ���
subplot(2,2,3)                            %�ָ��ͼ����
imshow(not(timg_2b))                      %��ʾ������ --��ֵ��ͼ��
title('������--��ֵ��ͼ��')                %��ӱ���
subplot(2,2,4)                            %�ָ��ͼ����
imshow(not(timg_rely))                    %��ʾ�����㡢������ͼ��
title('�����㡢�������ͼ��')              %��ӱ���
figure(2)                                 %��ͼ���
subplot(2,2,1)                            %�ָ��ͼ����
imshow(not(timg_fushi))                   %��ʾ��ʴͼ��
title('��ʴ���ͼ��')                      %��ӱ���
subplot(2,2,2)                            %�ָ��ͼ����
imshow(not(timg_pengzhang))               %��ʾ����ͼ��
title('���ͺ��ͼ��')                      %��ӱ���
subplot(2,2,3)                            %�ָ��ͼ����
imshow(not(timg_kaical))                  %��ʾ������ͼ��
title('�������ͼ��')                      %��ӱ���
subplot(2,2,4)                            %�ָ��ͼ����
imshow(not(timg_bical))                   %��ʾ������ͼ��
title('�������ͼ��')                      %��ӱ���