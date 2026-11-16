[y1, Fs] = audioread('audio.wav');
Fs=44100;
sound(y1,Fs) % Sinyal asli dimainkan

N=length(y1); % menghitung dimensi file wav
var = 0.2; %membangkitkan noise Gaussian
noise_1=var*randn(N,1); % menambahkan noise Gaussian ke file
y_1n=y1+noise_1;
sound(y_1n,Fs) % Sinyal bernoise dimainkan

subplot(2,1,1)
plot(y1)

subplot(2,1,2)
plot(y_1n)