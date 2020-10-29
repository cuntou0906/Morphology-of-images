function [ output ] = fushi( f , w1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fushi()ʵ�ֶ�ͼ��ĸ�ʴ
% f:����Ķ�ֵͼ��
% w1:��ʴģ��
% output����ʴ���ͼ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 [wx,wy]=size(w1);                      %��w1����Ĵ�С
 [fx,fy]=size(f);                       %��f����Ĵ�С
 Paddingf = zeros(fx+wx-1,fy+wy-1);     %��ʼ�����ͼ�����
 total = sum(sum(w1(find(isnan(w1)==0)),1),2);
                                        %��ԭͼ���󸲸������ͼ�������Ӧλ��
 Paddingf((wx+1)/2:(wx+1)/2+fx-1,(wy+1)/2:(wy+1)/2+fy-1)=f(:,:);
 output=zeros(fx,fy);                   %��ʼ����ʴͼ�����
  for i = (wx+1)/2:(wx+1)/2+fx-1        %ѭ������
     for j = (wy+1)/2:(wy+1)/2+fy-1
                                        %�������㸯ʴ���
                                        %����NaN�����㲻��Ҫ���ǵ�ģ���ϵĵ�
        imt = min(Paddingf(i-(wx-1)/2:i+(wx-1)/2,j-(wy-1)/2:j+(wy-1)/2),w1);
        in_result = sum(sum(imt(find(isnan(imt)==0)),2),1);
        output(i-(wx-1)/2,j-(wy-1)/2) = (in_result == total);
     end
 end
end

