%Group: Signal Processing,
[y1, Fs] = audioread('audio.wav');
Fs=44100;
sound(y1,Fs') % Memainkan audio sinyal asli

amp=1.5;
y2=amp*y1;
sound(y2,Fs) % Memainkan audio sinyal setelah penguatan

subplot(2,1,1)
plot(y1)

subplot(2,1,2)
plot(y2)