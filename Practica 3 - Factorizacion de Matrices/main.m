%% Factorizacion de Matrices
% Esta practica utiliza dos metodos de factorizacion de matrices

A = [ 6  3 -1  2;
      3  5  1 -1;
     -1  1  4  2;
      2 -1  2  7];

disp('Matriz original');
disp(A);

disp(' ');

% Choleski
[L, Lt] = choleski(A);
disp('Choleski');
disp('Matriz L');
disp(L);
disp('Matriz Lt');
disp(Lt);

disp(' ');

% LDLt
[L, D, Lt] = LDLt(A);
disp('LDLt');
disp('Matriz L');
disp(L);
disp('Matriz D');
disp(D);
disp('Matriz Lt');
disp(Lt);
