% Ian Mu;oz Nu;ez - El Adaline como aproximador de funciones

% Diseñar un código para que un Adaline aproxime la función descrita por los puntos:
% (1.0, 0.5), (1.5, 1.1), (3.0, 3.0), (-1.2, -1.0)

close all
clear
clc

x = [1.0 1.5 3.0 -1.2]; % Vector de entrada
b = [1.0 1.0 1.0 1.0]; % bias

P = [x; b]; % Patrones de entrada
d = [0.5; 1.1; 3.0; -1.0]; % Salida deseada

xl = min(x); % Valor minimo del vector de entrada
xu = max(x); % Valor maximo del vector de entrada
iter = 500; % Numero de iteraciones
eta = 0.01; % Velocidad de aprendizaje

[r, c] = size(P);
w = 100*rand(r, 1); % Vector de pesos
t = d;
x = P;

for step=1:iter
    y = zeros(c, 1);

    p = randperm(c);
    x = x(:, p);
    t = t(p);

    for j=1:c
        i = p(j);
        y(i) = x(:, i)' * w;
        w = w + eta * (t(i) - y(i)) * x(:, i);
    end

    J(step) = sum((t - x' * w).^2); % Calculo del error
end

figure(1) %%%% Grafica de la aproximacion de la funcion
hold on
grid on

x = [0 -w(2)/w(1)];
y = [w(2) 0];

t = xl:0.01:xu;
m = (y(2) - y(1))/(x(2) - x(1));
f = m*(t - x(1)) + y(1);

plot(P(1, :), d, 'g*', 'LineWidth', 4, 'MarkerSize', 4)
plot(x, y, 'b*', 'LineWidth', 4, 'MarkerSize', 4)
plot(t, f, 'r-', 'LineWidth', 2)

title("El Adaline como aproximador", 'FontSize', 20)
xlabel('x', 'FontSize', 15)
ylabel('y', 'FontSize', 15)

axis equal
axis([xl xu xl xu])

figure(2) %%%% Grafica del error
hold on
grid on

plot(J, 'g-', 'LineWidth', 2)

title("Grafica del error", 'FontSize', 20)

