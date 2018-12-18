%% Metodos iterativos
% El proposito de esta practica es encontrar el valor de una raiz dentro
% de un polinomio y un intervalo dado por varios metodos numericos.

min = -1;
max = 1;
tol = 1e-4;

format long
format compact

% Metodo de biseccion
[raiz, t] = biseccion(min, max, tol);
disp('Raiz por metodo de biseccion');
disp(raiz);
% t % Quita el comentario para ver tabla completa

% Metodo de punto fijo
[raiz, t] = pfijo(min, max, tol);
disp('Raiz por metodo de punto fijo');
disp(raiz);
% t % Quita el comentario para ver tabla completa

% Metodo de Newton-Raphson
[raiz, t] = newtonraphson(min, max, tol);
disp('Raiz por metodo de Newton Raphson');
disp(raiz);
% t % Quita el comentario para ver tabla completa

% Metodo de la secante
[raiz, t] = metsecante(min, max, tol);
disp('Raiz por metodo de la secante');
disp(raiz);
% t % Quita el comentario para ver tabla completa
