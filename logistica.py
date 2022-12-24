# Ian Mu;oz Nu;ez - Funcion logistica

import matplotlib.pyplot as plt
import numpy as np

n = 1000

v = np.linspace(-10, 10, n)

a = 0.2

phi = np.zeros((5, n))
for i in range(0, 5):
    for j in range(0, n):
        phi[i, j] = 1 / ( 1 + np.exp(-a * v[j]) )
    a += 0.2

plt.figure(1)
plt.grid()

plt.plot(v, phi[0, :], 'r', linewidth=2, label=r'0.2')
plt.plot(v, phi[1, :], 'b', linewidth=2, label=r'0.4')
plt.plot(v, phi[2, :], 'g', linewidth=2, label=r'0.6')
plt.plot(v, phi[3, :], 'y', linewidth=2, label=r'0.8')
plt.plot(v, phi[4, :], 'm', linewidth=2, label=r'1')

plt.title("Funcion logistica", fontsize=20)
plt.xlabel('v', fontsize=15)
plt.ylabel(r'$\phi$(v)', fontsize=15)

plt.legend()
plt.show()

