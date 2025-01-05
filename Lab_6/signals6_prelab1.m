%Prelab 6
Ac = 2.5;
Fc = 40000;
Fm = 5000;
t_min = 30*10^-3; % minimal signal length
d = [1, 5, 10];
B = d/5;
Fs = Fc * 8; % Sampling frequency
F_nyq = Fs/2; % Nyquist frequency
Ts = 1/Fs * (2^nextpow2(t_min * Fs));
t = 0: 1/Fs : Ts - 1/Fs;
for i = 1:length(B)
wc = 2*pi*Fc ;
wm = 2*pi*Fm;
Afm = Ac*cos(wc*t + B(i)*sin(wm*t));
Lt = length(t);
fm_fft = 2*abs(fft(Afm))/Lt;
fm_fft = fm_fft(1:end/2);
f = linspace(0, F_nyq, length(fm_fft));
subplot(3,1,i);
log_fm = 20 * log10 (fm_fft/sqrt(2));
plot (f, log_fm, 'LineWidth', 2);
xlabel('Frequency [Hz]');
ylabel('Magnitude [dB]');
ylim ([-40, 10]); xlim ([1*10^4, 7*10^4]);
title(['FM Signal for \beta_f= ',num2str(B(i))])
grid on;
end