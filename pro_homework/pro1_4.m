k=linspace(-10,10,20);%取一个整数序列
y=7*(0.6.^k).*cos(0.9*pi.*k);%计算函数矩阵
stem(k,y,'filled','r');%画出离散序列
axis([-10,10,-800,800]);%取图像范围
title('离散序列');
xlabel('k');
ylabel('f(k)');
