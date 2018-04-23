t=0:0.1:10;%生成自变量矩阵
sys=tf([2, 1],[1, 4, 3]);%把差分方程写成S域里的表达式
y=step(sys, t);%利用step函数生成阶跃响应
plot(t, y,'r');%画图
title('单位阶跃响应');
xlabel('t');
ylabel('y(t)');
