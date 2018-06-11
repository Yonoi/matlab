function [] = pro2(num)
syms t w;
f1 = 0.5*exp(-2*t).*heaviside(t);
f2 = 0.5*exp(-2*(t-1)).*heaviside(t-1);
f1_FT = fourier(f1,t,w);%f1����Ҷ�任
f2_FT = fourier(f2,t,w);%f2����Ҷ�任
if num==1%��������ʱ��ͼ��
    t = -5:0.01:5;
    subplot(2,1,1);
    plot(t,subs(f1,t));%f1ͼ��
    xlabel('Time(sec)');
    ylabel('f_1(t)');
    subplot(2,1,2);
    plot(t,subs(f2,t));%f2ͼ��
    xlabel('Time(sec)');
    ylabel('f_2(t)');
elseif num==2%������������ͼ
    w = -20:0.01:20;
    subplot(2,1,1);
    plot(w,subs(abs(f1_FT),w));%f1_FT�ķ���ͼ
    xlabel('w(rad/s)');
    ylabel('|F_1(jw)|');
    subplot(2,1,2);
    plot(w,subs(abs(f2_FT),w));%f2_FT�ķ���ͼ
    xlabel('w(rad/s)');
    ylabel('|F_2(jw)|');
elseif num==3%����������λͼ
    w = -20:0.01:20;
    subplot(2,1,1);
    plot(w,subs(angle(f1_FT),w));%f1_FT����λͼ
    xlabel('w(rad/s)');
    ylabel('��_1(w)');
    subplot(2,1,2);
    plot(w,subs(angle(f2_FT),w));%f2_FT����λͼ
    xlabel('w(rad/s)');
    ylabel('��_2(w)');
else              %��������Ƶ��ͼ��
    w = -20:0.01:20;
    subplot(2,1,1);
    plot(w,subs(f1_FT,w));%f1_FT��Ƶ��ͼ
    xlabel('w(rad/s)');
    ylabel('F_1(jw)');
    subplot(2,1,2);
    plot(w,subs(f2_FT,w));%f2_FT��Ƶ��ͼ
    xlabel('w(rad/s)');
    ylabel('F_2(jw)');
end
end
