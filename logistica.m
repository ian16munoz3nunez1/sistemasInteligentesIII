% Ian Mu;oz Nu;ez - Funcion sigmoidal

close all
clear
clc

n = 1000;

v = linspace(-10, 10, n);

a = 0.2;

phi = zeros(5, n);
for i=1:5
    for j=1:n
        phi(i, j) = 1/( 1 + exp(-a*v(j)) );
    end
    a = a + 0.2;
end

figure(1)
hold on
grid on

plot(v, phi(1, :), 'r', 'LineWidth', 2)
plot(v, phi(2, :), 'b', 'LineWidth', 2)
plot(v, phi(3, :), 'g', 'LineWidth', 2)
plot(v, phi(4, :), 'y', 'LineWidth', 2)
plot(v, phi(5, :), 'm', 'LineWidth', 2)

title("Funcion sigmoidal", 'FontSize', 20)
xlabel('v', 'FontSize', 15)
ylabel('\phi(v)', 'FontSize', 15)
legend('0.2', '0.4', '0.6', '0.8', '1')

