% Ian Mu;oz Nu;ez - El Adaline como clasificador

% Patrones de entrenamiento
% Ejemplo: Si queremos entrenar el perceptrón con una funcion AND de dos
%           entradas, tendríamos:
%               | x1 | x2 | b |  d |
%               |  0 |  0 | 1 | -1 | <-- Primer patrón
%               |  0 |  1 | 1 | -1 | <-- Segundo patrón
%               |  1 |  0 | 1 | -1 | <-- Tercer patrón
%               |  1 |  1 | 1 |  1 | <-- Cuarto patrón
% En donde x1 es la entrada 1, x2 es la entrada 2, b es la entrada del bias
% que siempre esta a 1 y d son los valores deseados

close all
clear
clc

xl = -0.1;
xu = 1.1;

x = [0 0 1 1;
    0 1 0 1];
b = [1 1 1 1];
d = [-1 -1 -1 1];

P = [x; b];
w = rand(size(P, 1), 1);
eta = 0.01;
iter = 200;

figure(1)
hold on
grid on

[w, e, y] = adaline(P, w, d, eta, iter);
disp("w=")
disp(w(1:2))
disp("b=")
disp(w(3))
disp("e=")
disp(e)
disp("y=")
disp(y)
y = signo(y);
disp("y=")
disp(y)

t = xl:0.01:xu;

m = -w(1)/w(2);
b = -w(3)/w(2);
f = m*t + b;

for i=1:size(P, 2)
    if y(i) >= 0
        plot(x(1, i), x(2, i), 'y*', 'LineWidth', 4, 'MarkerSize', 8)
    else
        plot(x(1, i), x(2, i), 'g*', 'LineWidth', 4, 'MarkerSize', 8)
    end
end
plot(t, f, 'r-', 'LineWidth', 2)

title("El Adaline como clasificador", 'FontSize', 20)
xlabel('x', 'FontSize', 15)
ylabel('y', 'FontSize', 15)

axis equal
axis([xl xu xl xu])

