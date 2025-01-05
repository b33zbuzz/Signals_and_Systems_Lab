%Generating and plotting Sine wave
fs=100000;
t = 0:1/fs:0.05;
f = 2000;
w0 = 2*pi*f;
A = 1;
s = A*sin(w0*t);
subplot(1,2,1);
plot(t, s);
xlabel('Time (t) [s]');
ylabel('Voltage [V]');
title('Sine Wave 2kHz');
xlim([0,0.002]);
ylim([-1, 1]);
grid on;

%Implementing and plotting FFT
f_nyq=fs/2;
L=length(s);
s_fft=fft(s);
s_fft=2*abs(s_fft/L);
db_s_fft=db(s_fft);
db_s_fft=db_s_fft(1:L/2+1);
f_domain=linspace(0,f_nyq,L/2+1);
subplot(1,2,2);
plot(f_domain,db_s_fft);
xlabel("Frequency [Hz]");
ylabel("Amplitude [dB]");
title("FFT Spectrum");
xlim([1750,2250]);
ylim([-20,10]);
