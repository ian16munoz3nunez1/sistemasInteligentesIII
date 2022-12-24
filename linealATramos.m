% Ian Mu;oz Nu;ez - Funcion lineal a tramos

close all
clear
clc

n = 1000;

v = linspace(-10, 10, n);

phi = [];
for i=1:n
    if v(i) >= 1
        phi(i) = 1;
    elseif v(i) > 0 && v(i) < 1
        phi(i) = v(i);
    else
        phi(i) = 0;
    end
end

figure(1)
hold on
grid on

plot(v, phi, 'g', 'LineWidth', 2)

title("Funcion lineal a tramos", 'FontSize', 20)
xlabel('v', 'FontSize', 15)
ylabel('\phi(v)', 'FontSize', 15)

