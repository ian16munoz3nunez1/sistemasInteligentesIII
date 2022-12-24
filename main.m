% Ian Mu;oz Nu;ez - Perceptron

% Implementar la funcion logica: A(B+C)
% A B C F
% 0 0 0 0
% 0 0 1 0
% 0 1 0 0
% 0 1 1 0
% 1 0 0 0
% 1 0 1 1
% 1 1 0 1
% 1 1 1 1

close all
clear
clc

iter = 100;
xl = -0.2;
xu = 1.2;
n = 100;

x = [0 0 0 0 1 1 1 1;
    0 0 1 1 0 0 1 1;
    0 1 0 1 0 1 0 1];
b = [1 1 1 1 1 1 1 1];
d = [0 0 0 0 0 1 1 1];

P = [x; b];

w = rand(size(P, 1), 1);
eta = 0.2;

figure(1) %%%% Figura 1: Compuerta and
hold on
grid on

[w, e, y] = perceptron(P, w, d, eta, iter);

xLim = linspace(xl, xu, n);
yLim = linspace(xl, xu, n);
[X, Y] = meshgrid(xLim, yLim);

m = -((w(1)*X)/w(3)) - ((w(2)*Y)/w(3));
b = -w(4)/w(3);
Z = m + b;

for i=1:size(P, 2)
    n(i) = w' * P(:, i);

    if n(i) >= 0
        plot3(x(1, i), x(2, i), x(3, i), 'y*', 'LineWidth', 4, 'MarkerSize', 10)
    else
        plot3(x(1, i), x(2, i), x(3, i), 'g*', 'LineWidth', 4, 'MarkerSize', 10)
    end
end
surf(X, Y, Z)

title("A(B+C)", 'FontSize', 20)
xlabel('A', 'FontSize', 15)
ylabel('B', 'FontSize', 15)
zlabel('C', 'FontSize', 15)

axis([xl xu xl xu xl xu])
axis equal

