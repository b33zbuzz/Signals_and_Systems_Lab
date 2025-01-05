%Under Sampling 48Hz
Fs=100000;
fs=48;
t=0:1/Fs:0.5;
w0=2*pi*50;
x=5*sin(w0*t);
subplot(3,1,1);
plot(t,x);
title("Input Signal x(t)");
ylabel("x(t)");
rec=[0.1,50];
for train = 1: length(rec)
    for rate = 1: length(fs)
        rect=max(square(2*pi*fs(rate)*t,rec(train)),0);
        subplot(3,1,2);
        plot(t,rect);
        title("Rectangular Pulse r(t)");
        ylabel("r(t)");
        subplot(3,1,3);
        xp=x.*rect;
        plot(t,xp);
        title("Output Signal x(t)*r(t)");
        xlabel("Time (t) [s]");
        ylabel("x_{r}(t)");
        ylim([-5,5]);
    end
end


%Nyquist Sampling 2*50=100Hz
Fs=100000;
fs=100;
t=0:1/Fs:0.1;
w0=2*pi*50;
x=5*sin(w0*t);
subplot(3,1,1);
plot(t,x);
title("Input Signal x(t)");
ylabel("x(t)");
rec=[0.1,50];
for train = 1: length(rec)
    for rate = 1: length(fs)
        rect=max(square(2*pi*fs(rate)*t,rec(train)),0);
        subplot(3,1,2);
        plot(t,rect);
        title("Rectangular Pulse r(t)");
        ylabel("r(t)");
        subplot(3,1,3);
        xp=x.*rect;
        plot(t,xp);
        title("Output Signal x(t)*r(t)");
        xlabel("Time (t) [s]");
        ylabel("x_{r}(t)");
        ylim([-5,5]);
    end
end


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
rec=[0.1,50];
for train = 1: length(rec)
    for rate = 1: length(fs)
        rect=max(square(2*pi*fs(rate)*t,rec(train)),0);
        subplot(3,1,2);
        plot(t,rect);
        title("Rectangular Pulse r(t)");
        ylabel("r(t)");
        subplot(3,1,3);
        xp=x.*rect;
        plot(t,xp);
        title("Output Signal x(t)*r(t)");
        xlabel("Time (t) [s]");
        ylabel("x_{r}(t)");
        ylim([-5,5]);
    end
end