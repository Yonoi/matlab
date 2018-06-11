function [] = pro2(num)
syms t w;
f1 = 0.5*exp(-2*t).*heaviside(t);
f2 = 0.5*exp(-2*(t-1)).*heaviside(t-1);
f1_FT = fourier(f1,t,w);%f1傅里叶变换
f2_FT = fourier(f2,t,w);%f2傅里叶变换
if num==1%画出两个时域图形
    t = -5:0.01:5;
    subplot(2,1,1);
    plot(t,subs(f1,t));%f1图形
    xlabel('Time(sec)');
    ylabel('f_1(t)');
    subplot(2,1,2);
    plot(t,subs(f2,t));%f2图形
    xlabel('Time(sec)');
    ylabel('f_2(t)');
elseif num==2%画出两个幅度图
    w = -20:0.01:20;
    subplot(2,1,1);
    plot(w,subs(abs(f1_FT),w));%f1_FT的幅度图
    xlabel('w(rad/s)');
    ylabel('|F_1(jw)|');
    subplot(2,1,2);
    plot(w,subs(abs(f2_FT),w));%f2_FT的幅度图
    xlabel('w(rad/s)');
    ylabel('|F_2(jw)|');
elseif num==3%画出两个相位图
    w = -20:0.01:20;
    subplot(2,1,1);
    plot(w,subs(angle(f1_FT),w));%f1_FT的相位图
    xlabel('w(rad/s)');
    ylabel('φ_1(w)');
    subplot(2,1,2);
    plot(w,subs(angle(f2_FT),w));%f2_FT的相位图
    xlabel('w(rad/s)');
    ylabel('φ_2(w)');
else              %画出两个频域图形
    w = -20:0.01:20;
    subplot(2,1,1);
    plot(w,subs(f1_FT,w));%f1_FT的频域图
    xlabel('w(rad/s)');
    ylabel('F_1(jw)');
    subplot(2,1,2);
    plot(w,subs(f2_FT,w));%f2_FT的频域图
    xlabel('w(rad/s)');
    ylabel('F_2(jw)');
end
end
