f = @(n,t)(sin(n*t)./n);
 N = [5,10,20,50,100,200,500,1000,2000];
    for i = 1:length(N)
        n = N(i);
        x = -pi:0.01:pi;
        res = zeros(size(x));
        for ii = 1:length(x)
            for iii = 1:n
                res(ii) = res(ii) + sum(f(1:iii,x(ii)));
            end
            res(ii)=res(ii)/n;
        end
     plot(x,res,'r');
     grid on;
     title('Sawtooth-fn(t)-Fn(t)');
     xlabel('Time(sec)');
     ylabel('Amplitude');
     pause(1);
 end