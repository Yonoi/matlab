 f = @(n,t)(sin(n*t)./n);
 N = [5,10,50,100,200,500,1000,2000];
 for i = 1:length(N)
     n = 1:N(i);
     x = -pi:0.01:pi;
     res = zeros(size(x));
     for ii = 1:length(x)
          res(ii)=sum(f(n,x(ii)));
     end
     plot(x,res);
     grid on;
     title('fN(t)');
     xlabel('Time(sec)');
     ylabel('Amplitude');
    % pause(1);
 end
