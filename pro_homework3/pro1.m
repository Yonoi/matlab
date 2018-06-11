function []=pro1(num)
if num==1
    syms t w;
    f = exp(-2*abs(t));
    f_FT = fourier(f,t,w);%����Ҷ�仯
    t = -10:0.01:10;
    subplot(2,1,1);
    plot(t,subs(f,t));%����f(t)
    xlabel('Time(sec)');
    ylabel('f(t)');
    w = -10:0.01:10;
    subplot(2,1,2);
    plot(w,subs(f_FT,w));%����F(t)
    xlabel('w(rad/s)');
    ylabel('F(jw)');
else
    syms t w;
    f_FT = 1/(1+w^2);
    f = ifourier(f_FT,w,t);%����Ҷ��仯
    w = -10:0.01:10;
    subplot(2,1,1);
    plot(w,subs(f_FT,w));%����F(t)
    xlabel('w(rad/s)');
    ylabel('F(jw)');
    t = -10:0.01:10;
    subplot(2,1,2);
    plot(t,subs(f,t));%����f(t)
    xlabel('Time(sec)');
    ylabel('f(t)');
end
end

