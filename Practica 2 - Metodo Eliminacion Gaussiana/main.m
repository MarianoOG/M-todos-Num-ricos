%% Metodo de la eliminacion gaussiana

% Matriz aumentada
A = [1  2  3  4;
     5  6  7  8;
     9 10 11 12];
 
% eliminacion gaussiana
X = elimgauss(A);
disp('Valor de X');
disp(X);

% Respuesta
ind = zeros(1,3);
for i = 1:3
    ind(i) = sum(A(i,1:3).*X);
end
disp('Respuestas');
disp(ind);