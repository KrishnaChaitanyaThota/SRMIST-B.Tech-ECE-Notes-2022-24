// Aliasing - DSP Experiment 3 - RA2011004010051 - Kunal Keshan
clear;
clf;
tfinal=0.002;
fm=20000*2*%pi;
fs=7500*2*%pi;
dtfi=2*%pi/fm/20;
tfi=0:dtfi:tfinal;
dt=2*%pi/fs;
t=0:dt:tfinal;
xfi=0.9*sin(fm*tfi);
x=0.9*sin(fm*t);
figure(1);
plot(tfi,xfi);
plot(t, x, 'ro-', 'LineWidth', 2);
xlabel('Time, seconds');
ylabel('Amplitude');
nfi=length(xfi);
fxfi=fft(xfi)/nfi;
wfi=[0:nfi-1]/(nfi-1)*2*%pi/dt;
n=length(x);
fx=fft(x)/n;
w=[0:n-1]/(n-1)*2*%pi/dt;
plot(w/2/%pi, abs(fx), wfi/2/%pi, abs(fxfi));
plot(modulo(fm,fs)/2/%pi, 0, 'r*', 'LineWidth', 2);
plot(modulo(-fm, fs)/2/%pi, 0, 'r*', 'LineWidth', 2);
disp(sprintf('Sampling freq: %g Hz', fs/2/%pi));
disp(sprintf('Aliased freq: %g %g Hz', modulo(fm, fs)/2/%pi, modulo(-fm,fs)/2/%pi));
