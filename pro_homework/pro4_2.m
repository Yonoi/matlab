x=1+2*randn(1,500);%������ֵΪ1������Ϊ4�ĸ�˹������
subplot(2,1,1);
plot(y);%��ͼ
title('��˹������');
ylabel('wgn����');
[r1,lags]=xcorr(x);%����غ����Ĺ���
subplot(2,1,2) ;
plot(lags,r1,'r');
title('xcorr������غ���');
