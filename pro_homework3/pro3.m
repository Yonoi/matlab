function [] = pro3(num)
wc = 100;
syms t w;
f1 = heaviside(t+2) - heaviside(t-2);
f2 = cos(wc*t);
f3 = f1*f2;
f1_FT = fourier(f1,t,w);
f2_FT = fourier(f2,t,w);
f3_FT = fourier(f3,t,w);

if num==1
    w = -10:0.03:10;
    plot(w,subs(abs(f1_FT),w));%f1的幅度谱
    axis([-10 10 -1 4.5]);
    xlabel('w(rad/s)');
    ylabel('|F_1(jw)|');
elseif num==2
    w = -200:200;
    plot(w,pi*sign(subs(f2_FT,w)));%f2的幅度谱
    axis([-200 200 -1 4]);
    xlabel('w(rad/s)');
    ylabel('|F_2(jw)|');
else 
    w = -200:0.07:200;%考虑到w！=100 or -100
    plot(w,subs(abs(f3_FT),w));%f3的幅度谱
    xlabel('w(rad/s)');
    ylabel('|F_3(jw)|');
end 
end

