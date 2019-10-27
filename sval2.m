function [s] = sval2(sign)
sign = double(sign); % original signal
n = length(sign);
new_sign(1) = sign(1)*(audiok(sign(1)))';
new_sign(2) = sign(2)*(audiok(sign(2)))'; % first and second sample values
for i=3:n-2
    new_sign(i) = sign(i-2:i+2)*(audiok(sign(i-2:i+2)))';%  i-2 : i+2, the length of the adaptive convolution kernel is 5
       
end
new_sign(n-1) = sign(n-1)*(audiok(sign(n-1)))';
new_sign(n) = sign(n)*(audiok(sign(n)))';% last two sample values

D = sign-new_sign;
fl=441; %160;  %Frame length £¨length of 10ms£©
for j=1:n/fl
    nb0 = 0;
    for i=1:fl-1
        if abs(D((j-1)*fl+i))<=2.5
            if abs(D((j-1)*fl+i+1))<=2.5
                nb0(i)=1;
            else
                nb0(i)=0;
            end
        else
            nb0(i)=0;
        end
        
    end
    s(j) = sum(nb0)/(fl-1);
end

end



% the code is designed by Zhangxueyuan
% 1098262448@qq.com  zhangxueyuan.cap@gmail.com  1711082129@nbu.edu.cn
% Ningbo University


