# Ian Mu;oz Nu;ez - El Adaline como clasificador

# Patrones de entrenamiento
# Ejemplo: Si queremos entrenar el perceptrón con una funcion AND de dos
#           entradas, tendríamos:
#               | x1 | x2 | b |  d |
#               |  0 |  0 | 1 | -1 | <-- Primer patrón
#               |  0 |  1 | 1 | -1 | <-- Segundo patrón
#               |  1 |  0 | 1 | -1 | <-- Tercer patrón
#               |  1 |  1 | 1 |  1 | <-- Cuarto patrón
# En donde x1 es la entrada 1, x2 es la entrada 2, b es la entrada del bias
# que siempre esta a 1 y d son los valores deseados

import matplotlib.pyplot as plt
import numpy as np
from adaline import Adaline as adaline
from signo import Signo as signo

xl = -0.1
xu = 1.1

x = [[0, 0, 1, 1],
     [0, 1, 0, 1]]
b = [1, 1, 1, 1]
d = [-1, -1, -1, 1]

P = np.vstack((x, b))
w = np.random.rand(P.shape[0], 1)
eta = 0.01
iter = 200

plt.figure(1)
plt.grid()

w, e, y = adaline(P, w, d, eta, iter)
print(f"w=\n{w[0:2]}")
print(f"b=\n{w[2]}")
print(f"e=\n{e}")
print(f"y=\n{y}")
y = signo(y)
print(f"y=\n{y}")

t = np.arange(xl, xu, 0.01)

m = -w[0]/w[1]
b = -w[2]/w[1]
f = m*t + b

for i in range(0, P.shape[1]):
    if y[i] >= 0:
        plt.plot(x[0][i], x[1][i], 'yo', linewidth=4, markersize=8)
    else:
        plt.plot(x[0][i], x[1][i], 'go', linewidth=4, markersize=8)
plt.plot(t, f, 'r-', linewidth=2)

plt.title("El Adaline como clasificador", fontsize=20)
plt.xlabel('x', fontsize=15)
plt.ylabel('y', fontsize=15)

plt.axis('equal')
plt.axis([xl, xu, xl, xu])

plt.show()

