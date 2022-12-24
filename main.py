# Ian Mu;oz Nu;ez - Perceptron

# Implementar la funcion logica: A(B+C)
# A B C F
# 0 0 0 0
# 0 0 1 0
# 0 1 0 0
# 0 1 1 0
# 1 0 0 0
# 1 0 1 1
# 1 1 0 1
# 1 1 1 1

import matplotlib.pyplot as plt
import numpy as np
from perceptron import Perceptron as perceptron

iter = 100
xl = -0.2
xu = 1.2
n = 100

x = [[0, 0, 0, 0, 1, 1, 1, 1],
     [0, 0, 1, 1, 0, 0, 1, 1],
     [0, 1, 0, 1, 0, 1, 0, 1]]
b = [1, 1, 1, 1, 1, 1, 1, 1]
d = [0, 0, 0, 0, 0, 1, 1, 1]

P = np.vstack((x, b))
w = np.random.rand(P.shape[0], 1)
eta = 0.2

plt.figure(1)
ax = plt.axes(projection='3d')

w, e, y = perceptron(P, w, d, eta, iter)

xLim = np.linspace(xl, xu, n)
yLim = np.linspace(xl, xu, n)
X, Y = np.meshgrid(xLim, yLim)

m = -((w[0]*X)/w[2]) - ((w[1]*Y)/w[2])
b = -w[3]/w[2]
Z = m + b

for i in range(0, P.shape[1]):
    n = np.dot(w.T, P[:, i])

    if n >= 0:
        ax.plot3D(x[0][i], x[1][i], x[2][i], 'yo', linewidth=4, markersize=10)
    else:
        ax.plot3D(x[0][i], x[1][i], x[2][i], 'go', linewidth=4, markersize=10)
ax.plot_surface(X, Y, Z, cmap='viridis')

ax.set_title("A(B+C)", fontsize=20)

ax.set_xlabel('A')
ax.set_ylabel('B')
ax.set_zlabel('C')

ax.set_xlim(xmin=xl, xmax=xu)
ax.set_ylim(ymin=xl, ymax=xu)
ax.set_zlim(zmin=xl, zmax=xu)

plt.show()

