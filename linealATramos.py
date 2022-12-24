# Ian Mu;oz Nu;ez - Funcion lineal a tramos

import matplotlib.pyplot as plt
import numpy as np

n = 1000

v = np.linspace(-10, 10, n)

phi = np.zeros(n)
for i in range(0, n):
    if v[i] >= 1:
        phi[i] = 1
    elif v[i] > 0 and v[i] < 1:
        phi[i] = v[i]
    else:
        phi[i] = 0

plt.figure(1)
plt.grid()

plt.plot(v, phi, 'g', linewidth=2)

plt.title("Funcion lineal a tramos", fontsize=20)
plt.xlabel('v', fontsize=15)
plt.ylabel(r'$\phi$(v)', fontsize=15)

plt.show()

