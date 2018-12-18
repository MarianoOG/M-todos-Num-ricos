%% Derivacion e integracion numerica
% Varios metodos para derivar e integrar.

% Derivadas de 3 y 5 puntos
x = 1:8;
y = x.^5;

dx = diff3pts(x,y); % Derivacion de 3 puntos
disp('Derivacion de 3 puntos');
disp(dx);

dx = diff5pts(x,y); % Derivacion de 5 puntos
disp('Derivacion de 5 puntos');
disp(dx);

% Integracion por regla del Trapecio y de Simpson

I = inttrapecio(1, 2, 3, 6); % Trapecio
disp('Regla del Trpecio');
disp(I);

I = intsimpson([1, 2, 3],[2, 4, 6]); % Simpson
disp('Regla de Simpson');
disp(I);

% Metodo de Taylor
t0 =   0;
tn =   2;
h  = 0.2;
y0 = 0.5;
syms y t

disp('Metodo de Taylor');
disp('Teniendo F=y-t^2+1; t dentro de [0,2]; y(0)=.5;h=0.2');
disp('Solucion actual:');
y2 = dsolve('Dy = y-t^2+1','y(0) = 0.5');
disp(y2);

F = y-t^2+1;
F1 = diff(F,t)  + F*diff(F,y);
F2 = diff(F1,t) + F*diff(F1,y);
F3 = diff(F2,t) + F*diff(F2,y);

N = (tn-t0)/h+1;
T = t0:h:tn;
T2 = F + F1*h/2;
T4 = F + F1*h/2 + F2*h^2/6 + F3*h^3/24;

W2 = zeros(1,N);
W4 = zeros(1,N);
W2(1) = y0;
W4(1) = y0;
for i = 2:N;
    W2(i) = W2(i-1) + h*(subs(subs(T2,y,W2(i-1)),t,T(i-1)));
    W4(i) = W4(i-1) + h*(subs(subs(T4,y,W4(i-1)),t,T(i-1)));
end

c = 2+(tn-t0)/h;
C = cell(c,6);
C(1,:) = {'ti','Valor exacto','Orden 2','Error 2?','Orden 4','Error 4?'};
for i=2:c
    C(i,1) = {T(i-1)};
    C(i,2) = {subs(y2,T(i-1))};
    C(i,3) = {W2(i-1)};
    C(i,4) = {abs(W2(i-1) - subs(y2,T(i-1)))};
    C(i,5) = {W4(i-1)};
    C(i,6) = {abs(W4(i-1) - subs(y2,T(i-1)))};
end

disp('Tabla de Resultados');
disp(C);