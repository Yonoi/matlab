%%square()函数
%%周期为pi 幅度为0.8 占空比为50%
A = 0.8; 
T = 2*pi;
duty = 50;
t = 0:4*pi/1000:4*pi;
f = square(t,50)*A;
subplot(2,1,1);
plot(t,f);
axis([0 14 -1 1]);
title('Square');
xlabel('Time(sec)');
ylabel('Amplitude');
grid on;
result = square_wave(200);
subplot(2,1,2);
plot(t,result);
title('Square wave');
xlabel('Time(sec)');
ylabel('Amplitude');
grid on;

