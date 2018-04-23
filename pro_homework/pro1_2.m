t=0:0.1:10;%定义自变量
y=exp(-0.5.*t).*cos(pi.*t);%注意与矩阵的运算加‘.’
plot(t,y,'r');%画图
%修饰
title('二阶电路暂态响应');
xlabel('t');
ylabel('f(t)');
