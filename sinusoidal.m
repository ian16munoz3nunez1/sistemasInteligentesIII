% Ian Mu;oz Nu;ez - Funcion sinusoidal

close all
clear
clc

n = 1000;

v = linspace(-10, 10, n);

A = 1;
B = 1;
C = 0;

phi = [];
for i=1:n
    phi(i) = A * sin(B*v(i) + C);
end

figure(1)
hold on
grid on

plot(v, phi, 'g', 'LineWidth', 2)

title("Funcion sinusoidal", 'FontSize', 20)
xlabel('v', 'FontSize', 15)
ylabel('\phi(v)', 'FontSize', 15)

