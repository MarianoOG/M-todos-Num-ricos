%% Metodo Gauss-Jordan
% Este metodo soluciona la matriz extendida utilizando el metodo
% Gauss-Jordan

A = [1  2  3  4;
     5  6  7  8;
     9 10 11 12];
 
X = gaussjordan(A);

disp('Valor de X');
disp(X);

ind = zeros(1,3);
for i = 1:3
    ind(i) = sum(A(i,1:3).*X);
end
    
disp('Resultado');
disp(ind);