function [outputDFT]= DFTmatrix(MatrixB, n, k, len)
    outputDFT = real(MatrixB(n+1,k+1) * exp(-1i.*(2*pi/(len+1)).*n.*k));
end