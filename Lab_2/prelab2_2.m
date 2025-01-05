%Taking the magnitude across the resistance represents a band-pass filter.
%Calculate the bandwidth and the Q factor of the circuit. Extract the bandwidth
%from the Matlab plot and compare.
R = 390;
C = 270*10^-9;
L = 10*10^-3;
V = 5;
s = tf('s');
impC = 1/(s*C);
impL = s*L;
impR = R;
impT = impC + impL + impR;

% Plot across Resistor
H_R = Z_R/Z_tot;
bode(H_R, 'r');
grid on;
hold on;
H_ref = (10^(-3/20))*s/s;
bode(H_ref, 'b');
grid on;
hold on;
H_cut = 1*s/s;
bode(H_cut, 'g');
grid on;
hold on;