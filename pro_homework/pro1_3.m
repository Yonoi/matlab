k=-10:10;%����һЩ��������
y=stepfun(k,-2)-stepfun(k,5)%���ý�Ծ�����ó���������
stem(k,y,'fill','r');%��ͼ
axis([-10,10,0,2]);%һЩ����
title('��λ��ɢ����');
xlabel('k');
ylabel('f(k)');
