syms s t
%����ϵͳ����
H(s)= s / (s^2 + 3*s + 2);
%ϵͳ�ĳ弤��Ӧ
fprintf('ϵͳ�ĳ弤��Ӧ');
F1(s) = laplace(dirac(t));
h(t) = ilaplace(H(s) * F1(s))
%ϵͳ�Ľ�Ծ��Ӧ
fprintf('ϵͳ�Ľ�Ծ��Ӧ');
F2(s) = laplace(heaviside(t));
g(t) = ilaplace(H(s) * F2(s))
%���� f (t) = cos(20t)e (t)��������״̬��Ӧ
fprintf('���� f (t) = cos(20t)e (t)��������״̬��Ӧ');
F3(s) = laplace(cos(20*t)*heaviside(t));
y(t) = ilaplace(H(s) * F3(s))