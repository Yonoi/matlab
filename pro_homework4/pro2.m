function [] = pro2(n)
if n == 1            %laplace�任
    syms t s
    f = t + 2;
    F = laplace(f,t,s)
elseif n==2        %����H1(s)���㼫��ͼ
    num = [0 0 1 2];
    den  = [1 1 2 6];
    Hs = tf (num,den);
    zplane(num,den);
    title('H_1(s)���㼫��ֲ�');
elseif n==3        %����H2(s)���㼫��ͼ
    num = [0 1 0 1];
    den  = [3 5 4 6];
    Hs = tf (num,den);
    zplane(num,den);
    title('H_2(s)���㼫��ֲ�');
end
