%----------Filtro valor médio----------%
%Filtto utilizado para tirar outliers atraves das médias
clear;
clc;
close all;

% Arquivo
% filename1 = 'dados.CSV';
% col1 = csvread(filename1,0,1);
% col2 = csvread(filename1,0,2);

fun_teste = randn(1,300) %Apenas exemplo, utilize os dados colhidos

%----------FILTRO DA FUNÇÃO-------------%
windowSize = 3; %Testar valores
b = (1/windowSize)*ones(1,windowSize);
a = 1;
y = filter(b,a,fun_teste);

figure();
plot(y);
hold on
plot(fun_teste)
