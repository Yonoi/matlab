function [ result ] = square_wave( n )
t = 0:4*pi/1000:4*pi;
result = zeros(size(t));
for k = 1:n
    result = result+sin((2*k-1).*t)/(2*k-1);
end
end
