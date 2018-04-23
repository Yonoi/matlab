k=-10:10;%产生一些整数序列
y=stepfun(k,-2)-stepfun(k,5)%利用阶跃函数得出函数矩阵
stem(k,y,'fill','r');%画图
axis([-10,10,0,2]);%一些修饰
title('单位离散序列');
xlabel('k');
ylabel('f(k)');
