% Gelombang "Stecu Stecu" sesuai gambar
clear; clc; close all;

Fs = 1000;              % jumlah titik sampel per periode
t1 = linspace(0, pi, Fs);    % setengah gelombang
y_half = sin(t1);            % setengah sinus positif

% Buat 2 setengah gelombang pertama
y1 = [y_half y_half];

% Buat bagian datar (flat line)
flat = zeros(1, round(Fs*0.5));

% Buat 2 setengah gelombang lagi
y2 = [y_half y_half];

% Gabungkan semua
y = [y1 flat y2];

% Sumbu waktu total
t = linspace(0, length(y)/Fs, length(y));

% Plot
figure;
plot(t, y, 'k', 'LineWidth', 2);
grid on;
xlabel('Waktu');
ylabel('Amplitudo');
title('Gelombang "Stecu Stecu"');

% Bagian isi area biar mirip gambar tangan
hold on;
area(t, y, 'FaceColor',[0.9 0.7 0.9], 'FaceAlpha',0.5, 'EdgeColor','none');
