r1=25;
r2=56;
c=2*10^-6;
l=20*10^-3;
a0=r1+r2;
a1=r1*r2*c+l;
a2=r1*c*l;
zeta=a1/(2*sqrt(a0*a2));
omegan=sqrt(a0/a2);

c1=(-263*10^-3);
c2=(63*10^-3);
expc1=(-zeta+sqrt(zeta^2-1));
expc2=(-zeta-sqrt(zeta^2-1));
t=0:0.0000002:0.002;

il=0.2+c1*exp((expc1)*omegan*t)+c2*exp((expc2)*omegan*t);

plot(t,il);
xlabel("time(t) [s]");
ylabel("I_l(t) [A]");