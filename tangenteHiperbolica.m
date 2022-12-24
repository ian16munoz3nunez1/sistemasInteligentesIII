% Ian Mu;oz Nu;ez - Funcion tangente hiperbolica

close all
clear
clc

n = 1000;

v = linspace(-10, 10, n);

A = 1; % Amplifica la funcion
B = 0.2; % Modifica la pendiente de la funcion
C = 0; % Desfasa la funcion

phi = zeros(5, n);
for i=1:5
    for j=1:n
        phi(i, j) = A * tanh(B*v(j) + C);
    end
    B = B + 0.2;
end

figure(1)
hold on
grid on

plot(v, phi(1, :), 'r', 'LineWidth', 2)
plot(v, phi(2, :), 'b', 'LineWidth', 2)
plot(v, phi(3, :), 'g', 'LineWidth', 2)
plot(v, phi(4, :), 'y', 'LineWidth', 2)
plot(v, phi(5, :), 'm', 'LineWidth', 2)

title("Funcion tangente hiperbolica", 'FontSize', 20)
xlabel('v', 'FontSize', 15)
ylabel('\phi(v)', 'FontSize', 15)
legend('0.2', '0.4', '0.6', '0.8', '1')

