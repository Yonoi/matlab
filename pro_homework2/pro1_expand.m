for m=-10:1:10
    t=-2*pi+4*m*pi:0.001:2*pi+4*m*pi;
    y=((t+2*pi-4*m*pi).*stepfun(t,-2*pi+4*m*pi)-(t-2*pi-4*m*pi).*stepfun(t,2*pi+4*m*pi))/(2*pi)-2*stepfun(t,4*m*pi);
    plot(t,y);hold on;
end
grid on;
title('Sawtooth  mT');
xlabel('Time(sec)');
ylabel('Amplitude');