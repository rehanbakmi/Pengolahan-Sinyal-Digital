% Parameter waktu
T = 100;                 % sampling rate
t = 0:1/T:2;             % waktu dari 0 s.d 2 detik

% Sinyal pertama
x1 = sin(2*pi*2*t);      % x1(t) = sin(2?·2t)

% Sinyal kedua
x2 = sin(2*pi*4*t);      % x2(t) = sin(2?·4t)

% Hasil perkalian
y = x1 .* x2;            % y(t) = x1(t) * x2(t)

% Plot hasil
subplot(3,1,1)
plot(t,x1)
title('Sinyal x1(t) = sin(2?·2t)')
xlabel('Waktu (s)'), ylabel('Amplitudo')

subplot(3,1,2)
plot(t,x2)
title('Sinyal x2(t) = sin(2?·4t)')
xlabel('Waktu (s)'), ylabel('Amplitudo')

subplot(3,1,3)
plot(t,y)
title('Hasil Perkalian y(t) = x1(t) * x2(t)')
xlabel('Waktu (s)'), ylabel('Amplitudo')
