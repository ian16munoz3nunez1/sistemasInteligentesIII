# Ian Mu;oz Nu;ez - Funcion tangente hiperbolica

import matplotlib.pyplot as plt
import numpy as np

n = 1000

v = np.linspace(-10, 10, n)

A = 1 # Amplifica la funcion
B = 0.2 # Modifica la pendiente de la funcion
C = 0 # Desfasa la funcion

phi = np.zeros((5, n))
for i in range(0, 5):
    for j in range(0, n):
        phi[i, j] = A * np.tanh(B*v[j] + C)
    B += 0.2

plt.figure(1)
plt.grid()

plt.plot(v, phi[0, :], 'r', linewidth=2, label=r'0.2')
plt.plot(v, phi[1, :], 'b', linewidth=2, label=r'0.4')
plt.plot(v, phi[2, :], 'g', linewidth=2, label=r'0.6')
plt.plot(v, phi[3, :], 'y', linewidth=2, label=r'0.8')
plt.plot(v, phi[4, :], 'm', linewidth=2, label=r'1')

plt.title("Funcion tangente hiperbolica", fontsize=20)
plt.xlabel('v', fontsize=15)
plt.ylabel('$\phi$(v)', fontsize=15)
plt.legend()
plt.show()

