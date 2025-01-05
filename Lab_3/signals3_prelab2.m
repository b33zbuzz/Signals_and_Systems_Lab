%Square wave
Fs = 200000;
t = 0:1/Fs:0.01;
sq = square((2*pi*t)/(10^-3), 33);
sgtitle("33% Duty Cycles");
subplot(2,2,1);
plot(t,sq);
xlim([0,0.002]);
ylim([-1.5,1.5]);
xlabel("Time(t) [s]");
ylabel("f(t)");
grid on;
title("Square Wave")
%FFT
L = length(sq);
F_nyq = Fs/2; 
sq_fft = fft(sq); 
sq_fft = 2*abs(sq_fft)/L;
sq_fft = sq_fft(1:L/2);
f = linspace(0, F_nyq, L/2);
subplot(2,2,2);
plot(f, sq_fft);
xlabel('Frequency [Hz]');
ylabel('f(t)');
title("FFT Spectrum of Square Wave");
grid on;
%Single Sided Spectrum
f = Fs*(0:(length(sq)/2))/length(sq);
SSSpec = abs(2*fft(sq)/length(sq));
SSSpec = db(SSSpec/sqrt(2));
SSSpec = SSSpec(1:length(sq)/2+1);
SSSpec(2:end-1) = 2*SSSpec(2:end-1);
subplot(2,2,3);
plot(f, SSSpec);
xlabel('Frequency [Hz]');
ylabel('Voltage [dB]');
title("Single-sided Spectrum");
grid on;
%Spectrum with only the first four harmonics
subplot(2,2,4);
plot(f, SSSpec);
xlabel('Frequency [Hz]'); %labeling Axes
ylabel('Voltage [dB]');
title("First Four Harmonics of Spectrum");
xlim([0,10000]);
grid on;

