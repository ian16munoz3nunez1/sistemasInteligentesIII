% Ian Mu;oz Nu;ez - Funcion signo

close all
clear
clc

n = 1000;

v = linspace(-10, 10, n);

phi = [];
for i=1:n
    if v(i) > 0
        phi(i) = 1;
    elseif v(i) == 0
        phi(i) = 0;
    else
        phi(i) = -1;
    end
end

figure(1)
hold on
grid on

plot(v, phi, 'g', 'LineWidth', 2)

title("Funcion signo", 'FontSize', 20)
xlabel('v', 'FontSize', 15)
ylabel('\phi(v)', 'FontSize', 15)

