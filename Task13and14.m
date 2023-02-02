%%Task 13 & 14
clc
clear all;
close all;

%%Find interfearance

array = zeros;

data = importdata('nspeech1.mat');

Fs = 8192; %Lab Sheet
len = length(data);

data;

%plot(data);

fftData = fft(data);
lenFFT = length(fftData);
plot(fftData);

result = zeros;

for i=1:lenFFT
    if (fftData(i) > 0.1)
        result(i) = 0;
    else
        result(i) = fftData(i);
    end
end
output = zeros;

plot(result);

%Inverse the FFT

inverse = ifft(result);

plot(inverse);

%Fs = 7500;
filename = 'nspeech2.wav';
audiowrite(filename,inverse,Fs);



%%Remove interfearance