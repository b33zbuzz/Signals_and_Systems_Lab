%% Initialization
R = 390;
C = 270*10^-9;
L = 10*10^-3;
V = 5;
s = tf('s');
impC = 1/(s*C);
impL = s*L;
impR = R;
impT = impC + impL + impR;
%% Bode plots
% Capacitor
HC = impC/impT;
bode(HC, 'b');
grid on;
hold on;
%Resistor
HR = impR/impT;
bode(HR, 'r');
grid on;
hold on;
%Inductor
HL = impL/impT;
bode(HL , 'g');
grid on;
hold on;
%Capacitor and Inductor
HLC = (impC + impL)/impT;
bode(HLC, 'm');
grid on;
hold on;

%%