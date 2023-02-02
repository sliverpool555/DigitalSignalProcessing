%%Task 13 & 14
clc
clear all;
close all;

%%Find interfearance

%%Task 15

dataA = audioread('noisyhomer.wav');
dataB = audioread('homer.wav');

lenA = length(dataA);
lenB = length(dataB);

plot(dataA,dataB);

PxA = zeros;
PxB = zeros;

for i=1:lenA
    PxA(i) = 1/lenA+1 * (dataA(i))^2;
    PxB(i) = 1/lenB+1 * (dataB(i))^2;
end

plot(PxA);
plot(PxB);

%FFT
fftDataA = fft(PxA);
fftDataB = fft(PxB);


%https://uk.mathworks.com/help/matlab/ref/fft.html
fftAbsA = abs(fftDataA/lenA);
fftA = fftAbsA(1:lenA/2+1);
fftA(2:end-1) = 2*fftA(2:end-1);

lenFFTA = length(fftDataA);
plot(fftA);

fftAbsB = abs(fftDataB/lenB);
fftB = fftAbsB(1:lenB/2+1);
fftB(2:end-1) = 2*fftB(2:end-1);

lenFFTB = length(fftDataB);
plot(fftB);


%% Find the power of the signal 

powerA = sum(fftA);
powerB = sum(fftB);

disp(powerA);
disp(powerB);

SNR= 10.*log(powerB/(powerA-powerB));

