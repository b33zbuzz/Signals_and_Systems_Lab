%Under Sampling 48Hz
Fs=100000;
fs=48;
t=0:1/Fs:1;
w0=2*pi*50;
x=5*sin(w0*t);
subplot(3,1,1);
plot(t,x);
title("Input Signal x(t)");
ylabel("x(t)");
impt=(1+square(2*pi*fs*t,0.1))/2;
subplot(3,1,2);
plot(t,impt);
title("Impulse Train p(t)");
ylabel("p(t)");
subplot(3,1,3);
xp=x.*impt;
plot(t,xp);
title("Output Signal x(t)*p(t)");
xlabel("Time (t) [s]");
ylabel("x_{p}(t)");
ylim([-5,5]);


%Nyquist Sampling 2*50=100Hz
Fs=100000;
fs=100;
t=0:1/Fs:1;
w0=2*pi*50;
x=5*sin(w0*t);
subplot(3,1,1);
plot(t,x);
title("Input Signal x(t)");
ylabel("x(t)");
impt=(1+square(2*pi*fs*t,0.1))/2;
subplot(3,1,2);
plot(t,impt);
title("Impulse Train p(t)");
ylabel("p(t)");
subplot(3,1,3);
xp=x.*impt;
plot(t,xp);
title("Output Signal x(t)*p(t)");
xlabel("Time (t) [s]");
ylabel("x_{p}(t)");
ylim([-5,5]);


%Over Sampling 1000Hz
Fs=100000;
fs=1000;
t=0:1/Fs:0.1;
w0=2*pi*50;
x=5*sin(w0*t);
subplot(3,1,1);
plot(t,x);
title("Input Signal x(t)");
ylabel("x(t)");
impt=(1+square(2*pi*fs*t,0.1))/2;
subplot(3,1,2);
plot(t,impt);
title("Impulse Train p(t)");
ylabel("p(t)");
subplot(3,1,3);
xp=x.*impt;
plot(t,xp);
title("Output Signal x(t)*p(t)");
xlabel("Time (t) [s]");
ylabel("x_{p}(t)");
ylim([-5,5]);