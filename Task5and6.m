clc
clear all;
close all;
len = 9;
outputDFT = zeros;
outputIDFT = zeros;
MatrixA(len,len) = zeros;
MatrixB(len,len) = zeros;
MatrixC(len,len) = zeros;
for x = 0:len
    for y = 0:len
        if (x==0)
            MatrixA(x+1,y+1) = 1;
        else
            MatrixA(x+1,y+1) = 0;
        end
    end
end
for x = 0:len
    for y = 0:len
        MatrixB(x+1,y+1) = 1;
    end
end
for x = 0:len
    for y = 0:len
        MatrixC(x+1,y+1) = cos(2*pi*x/10);
    end
end

for k = 0:len
        for n = 0:len
            [outputDFT(n+1,k+1)] = DFTmatrix(MatrixB, n, k, len);
        end
end

%% Find a to find inverse FFT
nums = randperm(10);
nums = nums(1:4);

selCol = zeros(len,4);

n = length(nums);

for i=1:n
    for j=1:len
        selCol(j,i) = outputDFT(j,nums(i));
    end
end

a = transpose(selCol);


%% Plotting
plot(outputDFT)
hold on
%plot(outputIDFT)
disp(MatrixB)
disp(outputDFT)