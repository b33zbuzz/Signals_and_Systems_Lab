%Generating and plotting Sine wave
t = 0:0.00001:0.05;
f = 500;
w0 = 2*pi*f;
A = sqrt(2)/2;
s = A*sin(w0*t);
subplot(1,2,1);
plot(t, s);
xlabel('Time (t) [s]');
ylabel('Voltage [V]');
title('Sine Wave Plot');
xlim([0,0.01]);
ylim([-1, 1]);
grid on;

%Implementing and plotting FFT
fs=100000;
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
xlim([300,700]);
ylim([-40,20]);
