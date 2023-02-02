function [output]=IDFTsum(complex, n, k, len)
N= len+1;
x = complex * exp(1i.*(2*pi/N).*n.*k);
output = real(x);
end