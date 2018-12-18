%% Algoritmo de Neville
% Algoritmo utilizado para interpolar polinomios

p = 3.5;
X = 1:6;

A = neville(p,X);
disp('Neville');
disp(A);