y=2*wgn(1,500,0);%������ֵΪ0����Ϊ2����0dbw�ĸ�˹������
subplot(2,1,1);
plot(y);%��ͼ
title('��˹������');
ylabel('wgn����');
n=length(y);
[ACF,lags,bounds] = autocorr(y,n-1) ;
subplot(2,1,2) ;
plot(lags,ACF,'r') ;
title('autocorr������غ���');
