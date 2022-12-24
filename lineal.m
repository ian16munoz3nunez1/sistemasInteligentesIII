% Ian Mu;oz Nu;ez - Funcion lineal

close all
clear
clc

n = 1000;

v = linspace(-10, 10, n);

A = 1;

phi = zeros(5, n);
for i=1:5
    for j=1:n
        phi(i, j) = A*v(j);
    end
    A = A + 1;
end

figure(1)
hold on
grid on

plot(v, phi(1, :), 'r', 'LineWidth', 2)
plot(v, phi(2, :), 'b', 'LineWidth', 2)
plot(v, phi(3, :), 'g', 'LineWidth', 2)
plot(v, phi(4, :), 'y', 'LineWidth', 2)
plot(v, phi(5, :), 'm', 'LineWidth', 2)

title("Funcion lineal", 'FontSize', 20)
xlabel('v', 'FontSize', 15)
ylabel('\phi(v)', 'FontSize', 15)
legend('1', '2', '3', '4', '5')

