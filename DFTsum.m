function [outputReal, outputImag, outputComplex]=DFTsum(x, n ,k, len)
            N = len+1;
            a = x * exp(-1i.*(2*pi/N).*n.*k);
            var = complex(a);
            outputComplex = var;
            outputReal = real(var);
            outputImag = imag(var);
end