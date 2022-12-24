% Ian Mu;oz Nu;ez - Funcion escalon o umbral

close all
clear
clc

v = linspace(-10, 10, 1000);

phi = [];
for i=1:1000
    if v(i) >= 0
        phi(i) = 1;
    else
        phi(i) = 0;
    end
end

figure(1)
hold on
grid on

plot(v, phi, 'g', 'LineWidth', 2)

title("Funcion escalon o umbral", 'FontSize', 20)
xlabel('v', 'FontSize', 15)
ylabel('\phi(v)', 'FontSize', 15)

