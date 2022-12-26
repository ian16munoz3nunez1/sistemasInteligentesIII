# Ian Mu;oz Nu;ez - Perceptron

# Diseñe una red neuronal unicapa, con función tipo escalón, con dos
# entradas y dos salidas que sea capaz de clasificar los siguientes diez
# puntos en el plano, los cuales pertenecen a cuatro clases
# Grupo 1: (0.1, 1.2), (0.7, 1.8), (0.8, 1.6)
# Grupo 2: (0.8, 0.6), (1.0, 0.8)
# Grupo 3: (0.3, 0.5), (0.0, 0.2), (-0.3, 0.8)
# Grupo 4: (-0.5, -1.5), (-1.5, -1.3)

import matplotlib.pyplot as plt
import numpy as np
from perceptron import Perceptron as perceptron

iter = 200
xl = -1.6
xu = 2

x = [0.1, 0.7, 0.8, 0.8, 1.0, 0.3, 0.0, -0.3, -0.5, -1.5]
y = [1.2, 1.8, 1.6, 0.6, 0.8, 0.5, 0.2, 0.8, -1.5, -1.3]

x = np.vstack((x, y))
b = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
d1 = [0, 0, 0, 0, 0, 1, 1, 1, 1, 1]
d2 = [0, 0, 0, 1, 1, 0, 0, 0, 1, 1]

P = np.vstack((x, b))
w = np.random.rand(P.shape[0], 1)
eta = 0.1

plt.figure(1)
plt.grid()

w1, e1, y1 = perceptron(P, w, d1, eta, iter)
w2, e2, y2 = perceptron(P, w, d2, eta, iter)

t = np.arange(xl, xu, 0.01)

m1 = -w1[0]/w1[1]
b1 = -w1[2]/w1[1]
f1 = m1*t + b1

m2 = -w2[0]/w2[1]
b2 = -w2[2]/w2[1]
f2 = m2*t + b2

for i in range(0, P.shape[1]):
    n1 = np.dot(w1.T, P[:, i])
    n2 = np.dot(w2.T, P[:, i])

    if n1 >= 0 and n2 >= 0:
        plt.plot(x[0, i], x[1, i], 'rx', linewidth=2, markersize=7)
    elif n1 >= 0 and n2 < 0:
        plt.plot(x[0, i], x[1, i], 'bx', linewidth=2, markersize=7)
    elif n1 < 0 and n2 >= 0:
        plt.plot(x[0, i], x[1, i], 'gx', linewidth=2, markersize=7)
    else:
        plt.plot(x[0, i], x[1, i], 'yx', linewidth=2, markersize=7)
plt.plot(t, f1, 'c-', linewidth=2)
plt.plot(t, f2, 'm-', linewidth=2)

plt.title("Clasificacion de 4 grupos", fontsize=20)
plt.xlabel('x', fontsize=15)
plt.ylabel('y', fontsize=15)

plt.axis('equal')
plt.axis([xl, xu, xl, xu])

plt.show()

