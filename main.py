# Ian Mu;oz Nu;ez - Perceptron

import matplotlib.pyplot as plt
import numpy as np
from perceptron import Perceptron as perceptron

iter = 100
xl = -0.2
xu = 1.2

x = [[0, 0, 1, 1],
     [0, 1, 0, 1]]
b = [1, 1, 1, 1]
d = [0, 0, 0, 1]

P = np.vstack((x, b))
w = np.random.rand(P.shape[0], 1)
eta = 0.2

w, e, y = perceptron(P, w, d, eta, iter)

t = np.arange(xl, xu, 0.1)
m = -w[0]/w[1]
b = -w[2]/w[1]
f = m*t + b

plt.figure(1)
plt.grid()

for i in range(0, P.shape[1]):
    n = np.dot(w.T, P[:, i])

    if n >= 0:
        plt.plot(x[0][i], x[1][i], 'yo', linewidth=4, markersize=10, label=r'datos')
    else:
        plt.plot(x[0][i], x[1][i], 'go', linewidth=4, markersize=10, label=r'datos')
plt.plot(t, f, 'r', linewidth=2, label=r'hiperplano')

plt.title("and", fontsize=20)
plt.xlabel('A', fontsize=15)
plt.ylabel('B', fontsize=15)

plt.axis('equal')
plt.axis([xl, xu, xl, xu])
plt.legend()

plt.figure(2)
plt.grid()

d = [0, 1, 1, 1]
w = np.random.rand(P.shape[0], 1)

w, e, y = perceptron(P, w, d, eta, iter)

m = -w[0]/w[1]
b = -w[2]/w[1]
f = m*t + b

for i in range(0, P.shape[1]):
    n = np.dot(w.T, P[:, i])

    if n >= 0:
        plt.plot(x[0][i], x[1][i], 'yo', linewidth=4, markersize=10, label=r'datos')
    else:
        plt.plot(x[0][i], x[1][i], 'go', linewidth=4, markersize=10, label=r'datos')
plt.plot(t, f, 'r', linewidth=2, label=r'hiperplano')

plt.title("or", fontsize=20)
plt.xlabel('A', fontsize=15)
plt.ylabel('B', fontsize=15)

plt.axis('equal')
plt.axis([xl, xu, xl, xu])
plt.legend()

plt.show()

