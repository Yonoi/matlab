t=0:0.1:10;%�����Ա�������
sys=tf([2, 1],[1, 4, 3]);%�Ѳ�ַ���д��S����ı��ʽ
y=impulse(sys, t);%����impulse�������ɳ����Ӧ
plot(t, y,'r');%��ͼ
title('��λ�����Ӧ');
xlabel('t');
ylabel('y(t)');
