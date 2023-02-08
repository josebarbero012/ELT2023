clc;
clear;
load('log.mat');
x=[ARSP(:,2)];
y=[ARSP(:,3)];


F = fft(y); % calcula a transformada de Fourier: analisa o sinal nas frequencias
F = fftshift(F); %coloca as baixas frequencias no meio do sinal, altas nas pontas
% Zera as N primeiras e N ultimas altas frequencias do sinal
N = 1000;
F(1:N) = 0;
F(end-N:end) = 0;

F = ifftshift(F);% volta o sinal para sua forma original
S = ifft(F);% aplica a transformada inversa de Fourier
y1 = real(S);% pega apenas a parte real da transformada

plot(x,y);
title("TimeUS X Y - Filtrado");
xlabel("TimeUS");
ylabel("y");
hold on;
%plot(x,y1,'r');
hold off;
