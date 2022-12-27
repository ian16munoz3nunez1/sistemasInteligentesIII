# Ian Mu;oz Nu;ez - El Adaline como aproximador de funciones

# Diseñar un código para que un Adaline aproxime la función descrita por los puntos:
# (1.0, 0.5), (1.5, 1.1), (3.0, 3.0), (-1.2, -1.0)

import matplotlib.pyplot as plt
import numpy as np

x = [1.0, 1.5, 3.0, -1.2] # Vector de entrada
b = [1, 1, 1, 1] # bias

P = np.vstack((x, b)) # Patrones de entrada
d = [0.5, 1.1, 3.0, -1.0] # Salida deseada
d = np.array(d)

xl = min(x) # Valor minimo del vector de entrada
xu = max(x) # Valor maximo del vector de entrada
iter = 500 # Numero de iteraciones
eta = 0.01 # Velocidad de aprendizaje

J = np.zeros(iter)
r, c = P.shape
w = 100*np.random.rand(r, 1) # Vector de pesos
t = d
x = P

for step in range(0, iter):
    y = np.zeros(c)

    p = np.random.permutation(c)
    x = x[:, p]
    t = t[p]

    for j in range(0, c):
        i = p[j]
        y[i] = np.dot(x[:, i].T, w)
        w = w + eta * (t[i] - y[i]) * x[:, i].reshape(x.shape[0], 1)

    # Calculo del error
    e = (t.reshape(t.shape[0], 1) - np.matmul(x.T, w))**2
    J[step] = sum(e)

plt.figure(1) #### Grafica de la aproximacion de la funcion
plt.grid()

x = [0, float(-w[1]/w[0])]
y = [float(w[1]), 0]

t = np.arange(xl, xu, 0.01)
m = (y[1] - y[0])/(x[1] - x[0])
f = m*(t - x[0]) + y[0]

plt.plot(P[0, :], d, 'go', linewidth=4, markersize=4)
plt.plot(x, y, 'bo', linewidth=4, markersize=4)
plt.plot(t, f, 'r-', linewidth=2)

plt.title("El Adaline como aproximador", fontsize=20)
plt.xlabel('x', fontsize=15)
plt.ylabel('y', fontsize=15)

plt.axis('equal')
plt.axis([xl, xu, xl, xu])

plt.figure(2) #### Grafica del error
plt.grid()

plt.plot(J, 'g-', linewidth=2)

plt.title("Grafica del error", fontsize=20)

plt.show()

