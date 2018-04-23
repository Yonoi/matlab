x=1+2*randn(1,500);%产生均值为1，方差为4的高斯白噪声
subplot(2,1,1);
plot(y);%画图
title('高斯白噪声');
ylabel('wgn生成');
[r1,lags]=xcorr(x);%自相关函数的估计
subplot(2,1,2) ;
plot(lags,r1,'r');
title('xcorr求自相关函数');
