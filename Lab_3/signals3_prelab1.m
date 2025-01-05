t=(-0.5):0.0001:0.5; %given function
y=4*t.*t;

f=1/3-(4/pi^2)*(cos(2*pi*t)-(1/4)*cos(4*pi*t)+(1/9)*cos(6*pi*t)-(1/16)*cos(8*pi*t)+(1/25)*cos(10*pi*t));
%fourier series approximation
figure(1);
plot(t,y);
xlim([-0.5,0.5]);
grid on;
hold on;
plot(t,f);
xlabel("Time (t) [s]")
ylabel("f(t)");