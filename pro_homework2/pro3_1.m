f = @(n,t)(sin(n*t)./n);
n = 1:100;
x = -10:0.01:10;
res = zeros(size(x));
for t = 1:length(x)
    res(t) = sum(f(n,x(t)));
end
plot(x,res);
title('f(t)-fourier series');
xlabel('Time(sec)');
ylabel('Amplitude');
grid on;