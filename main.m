% Ian Mu;oz Nu;ez - Perceptron

% Diseñe una red neuronal unicapa, con función tipo escalón, con dos
% entradas y dos salidas que sea capaz de clasificar los siguientes diez
% puntos en el plano, los cuales pertenecen a cuatro clases
% Grupo 1: (0.1, 1.2), (0.7, 1.8), (0.8, 1.6)
% Grupo 2: (0.8, 0.6), (1.0, 0.8)
% Grupo 3: (0.3, 0.5), (0.0, 0.2), (-0.3, 0.8)
% Grupo 4: (-0.5, -1.5), (-1.5, -1.3)

close all
clear
clc

iter = 200;
xl = -1.6;
xu = 2;

x = [0.1 0.7 0.8 0.8 1.0 0.3 0.0 -0.3 -0.5 -1.5];
y = [1.2 1.8 1.6 0.6 0.8 0.5 0.2 0.8 -1.5 -1.3];

x = [x; y];
b = [1 1 1 1 1 1 1 1 1 1];
d1 = [0 0 0 0 0 1 1 1 1 1];
d2 = [0 0 0 1 1 0 0 0 1 1];

P = [x; b];

w = rand(size(P, 1), 1);
eta = 0.1;

figure(1)
hold on
grid on

[w1, e1, y1] = perceptron(P, w, d1, eta, iter);
[w2, e2, y2] = perceptron(P, w, d2, eta, iter);

t = xl:0.01:xu;

m1 = -w1(1)/w1(2);
b1 = -w1(3)/w1(2);
f1 = m1*t + b1;

m2 = -w2(1)/w2(2);
b2 = -w2(3)/w2(2);
f2 = m2*t + b2;

for i=1:size(P, 2)
    n1(i) = w1' * P(:, i);
    n2(i) = w2' * P(:, i);

    if n1(i) >= 0 && n2(i) >= 0
        plot(x(1, i), x(2, i), 'rx', 'LineWidth', 2, 'MarkerSize', 7)

    elseif n1(i) >= 0 && n2(i) < 0
        plot(x(1, i), x(2, i), 'bx', 'LineWidth', 2, 'MarkerSize', 7)

    elseif n1(i) < 0 && n2(i) >= 0
        plot(x(1, i), x(2, i), 'gx', 'LineWidth', 2, 'MarkerSize', 7)

    else
        plot(x(1, i), x(2, i), 'yx', 'LineWidth', 2, 'MarkerSize', 7)
    end
end
plot(t, f1, 'c-', 'LineWidth', 2)
plot(t, f2, 'm-', 'LineWidth', 2)

title("Clasificacion de 4 grupos", 'FontSize', 20)
xlabel('x', 'FontSize', 15)
ylabel('y', 'FontSize', 15)

axis equal
axis([xl xu xl xu])

