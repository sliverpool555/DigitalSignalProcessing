%% DFT Function
clc
clear all;
close all;

len = 9;
outputDFT = zeros;
outputPlot = zeros;
arrayA = zeros;
for x = 0:len
    if(x==0)
      arrayA(x+1) = 1;
    else
      arrayA(x+1) = 0;  
    end
end 

arrayB = zeros;
for x = 0:len
    arrayB(x+1) = 1;
end  

arrayC = zeros;
for x = 0:len
    arrayC(x+1) = cos(2*pi*x/10);
end   
   
    for n = 0:len
        for k = 0:len
            [outputDFT(n+1,1), outputDFT(n+1,2), outputDFT(n+1,3)] = DFTsum(arrayC(n+1), n ,k, len);
            outputPlot(n+1,1)= real(outputDFT(n+1,1));                   
        end
    end     
S = round(sum(real(outputDFT)));
plot(arrayC, 'DisplayName', 'Input of DFT');
legend();
hold on;
plot(outputPlot, 'DisplayName', 'Output of DFT');
legend();