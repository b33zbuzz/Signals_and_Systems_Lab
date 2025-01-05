%Plotting the first 10ms
[A,Fs] = audioread("s_samp.wav");
t=0:1/Fs:(numel(A)-1)/Fs;
plot(t(1:450),A(1:450));
xlabel("Time (t) [s]");
xlim([0,0.01]);
ylabel("Amplitude");
title("First 10ms of Sound Sample");

%Plotting the Single sided spectrum
L=numel(A);
A_fft=fft(A)/L;
A_fft2=abs(A_fft(1:floor((L+1)/2)));
Domain=(0:(L-1)/2);
fDomain=Fs*Domain/L;
plot(fDomain,A_fft2);
xlim([0,7000]);
xlabel("Frequency [Hz]");
ylabel("Amplitude");
title("Single Sided Amplitude Spectrum");


