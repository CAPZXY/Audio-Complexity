function K=audiok(x)
% x denotes the part of signal, which used to generate the adaptive convolution kernel


n = length(x);
mid = ceil(n/2);
w = 1.5; %preset weight, w
for i = 1:n
    y = w/(abs(x(i)-x(mid))+w);
    for j=1:n
        c(j) = w/(abs(x(j)-x(mid))+w);
    end
    z = sum(c);
    K(i) = y/z; %same length as the length of inputed signal x

end


% the code is designed by Zhangxueyuan
% 1098262448@qq.com  zhangxueyuan.cap@gmail.com  1711082129@nbu.edu.cn
% Ningbo University






