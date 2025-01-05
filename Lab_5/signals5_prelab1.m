%Plot the modulated signal in time and frequency domain
Fs=100000;                  %given values
Fc=20000;
Fm=500;
N=25000;
m=0.5;
t=0:1/Fs:(N*(1/Fs)-(1/Fs)); %domains
f=(-Fs/2):Fs/N:Fs/2-Fs/N;
wc=2*pi*Fc;                 %functions
wm=2*pi*Fm;
car=5*sin(wc*t); 
mod=sin(wm*t);
x=(1+m*mod).*car;
x_fft=fft(x);
x_fft=fftshift(abs(x_fft));
figure (1);                 %plotting
subplot(2,1,1);   
plot(t,x);
xlabel('Time (t) [s]');
ylabel('Amplitude [V]');
title('Modulated signal in Time Domain');
xlim([0,0.01]);
ylim([-8,8]);
subplot(2,1,2);
plot(f,x_fft);
xlabel('Frequency [Hz]');
ylabel('Amplitude [V]');
title('Modulated signal in Frequency Domain');

%Designing first and third order butterworth filters   ,
fs=300000;
fc=1000;
[b1,a1]=butter(1,(fc/(fs/2)));
[b3,a3]=butter(3,(fc/(fs/2)));
[h1,f1]=freqz(b1,a1,1000,fs);
[h3,f3]=freqz(b3,a3,1000,fs);
hdB1=20*log10(h1.*conj(h1));
hdB3=20*log10(h3.*conj(h3));
figure(2);
semilogx(f1, hdB1);
hold on;
semilogx(f3,hdB3);
title('Butterworth Low Pass Filter');
xlabel('Frequency [Hz]');
ylabel('Magnitude [dB]');
xlim([100,100000]);
legend('1st Order','3rd Order');

%Rectifying the AM signal
abs_x=abs(x);
figure(3);
subplot(3,1,1);
plot(t,abs_x);
title('Rectified AM Modulated Signal');
xlim([0,0.01]);
ylim([0,8]);
ylabel('Amplitude [V]');
%1st order filter
x1 = filter(b1, a1, abs_x);
subplot(3,1,2);
plot(t, x1);
title('1st Order Filtered Demodulated Signal');        ,
ylabel('Amplitude [V]');
xlim([0, 0.01]);
ylim([0,5]);
%3rd order filter
x3 = filter(b3, a3, abs_x);
subplot(3,1,3);
plot(t, x3);
title('3rd Order Filtered Demodulated Signal');
xlabel('Time (t) [s]');
ylabel('Amplitude [V]');
xlim([0,0.01]);
ylim([0,5]);

