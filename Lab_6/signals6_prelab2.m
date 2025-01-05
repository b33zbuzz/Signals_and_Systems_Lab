R=100;
C=10^-6;
L=10^-1;
s=tf('s');
ZR=R;
ZC=1/(s*C);
ZL=s*L;
Zr=1/ZR;
Zc=1/ZC;
Zl=1/ZL;
ZO=Zl+2*Zc+Zr;
Zo=1/ZO;
H=Zo/(Zo+ZR);
bode(H);

