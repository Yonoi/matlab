t=-2*pi:0.1:2*pi;
y=sawtooth(0.5*t,1);
plot(t,y,'r');hold on;
sum=zeros(size(t));
for k=-10:10
       sum=sum+pro1_fun(k).*exp(0.5i*k.*t);%对谐波进行叠加处理
end
plot(t,sum);
grid on;
