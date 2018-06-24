Wc = 500;
N = 2:1:5;
Color = ['r','g','k','b'];
f = @(W,n) ( 1 ./ (1 + (W ./ Wc).^(2 * n)));
w = 0:0.01:1000;
for i=1:length(N)
   plot(w / Wc, sqrt(f(w , N(i))),Color(i));
   hold on;
end
title('|H(jw)|');
ylabel('Magnitude');
xlabel('Frequency/Hz');
