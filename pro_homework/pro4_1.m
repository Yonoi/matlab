y=2*wgn(1,500,0);%产生均值为0方差为2功率0dbw的高斯白噪声
subplot(2,1,1);
plot(y);%画图
title('高斯白噪声');
ylabel('wgn生成');
n=length(y);
[ACF,lags,bounds] = autocorr(y,n-1) ;
subplot(2,1,2) ;
plot(lags,ACF,'r') ;
title('autocorr求自相关函数');
