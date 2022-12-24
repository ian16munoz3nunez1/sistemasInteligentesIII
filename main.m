% Ian Mu;oz Nu;ez - Perceptron

close all
clear
clc

iter = 100;
xl = -0.2;
xu = 1.2;

x = [0 0 1 1;
    0 1 0 1];
b = [1 1 1 1];
d = [0 0 0 1];

P = [x; b];

w = rand(size(P, 1), 1);
eta = 0.2;

figure(1) %%%% Figura 1: Compuerta and
hold on
grid on

[w, e, y] = perceptron(P, w, d, eta, iter);

t = xl:0.01:xu;
m = -w(1)/w(2);
b = -w(3)/w(2);
f = m*t + b;

for i=1:size(P, 2)
    n(i) = w' * P(:, i);

    if n(i) >= 0
        plot(x(1, i), x(2, i), 'y*', 'LineWidth', 4, 'MarkerSize', 10)
    else
        plot(x(1, i), x(2, i), 'g*', 'LineWidth', 4, 'MarkerSize', 10)
    end
end
plot(t, f, 'r-', 'LineWidth', 2)

title("and", 'FontSize', 20)
xlabel('A', 'FontSize', 15)
ylabel('B', 'FontSize', 15)

axis([xl xu xl xu])
axis equal

figure(2) %%%% Figura 2: Compuerta or
hold on
grid on

d = [0 1 1 1];
w = rand(size(P, 1), 1);

[w, e, y] = perceptron(P, w, d, eta, iter);

t = xl:0.01:xu;
m = -w(1)/w(2);
b = -w(3)/w(2);
f = m*t + b;

for i=1:size(P, 2)
    n(i) = w' * P(:, i);

    if n(i) >= 0
        plot(x(1, i), x(2, i), 'y*', 'LineWidth', 4, 'MarkerSize', 10)
    else
        plot(x(1, i), x(2, i), 'g*', 'LineWidth', 4, 'MarkerSize', 10)
    end
end
plot(t, f, 'r-', 'LineWidth', 2)

title("or", 'FontSize', 20)
xlabel('A', 'FontSize', 15)
ylabel('B', 'FontSize', 15)

axis([xl xu xl xu])
axis equal

