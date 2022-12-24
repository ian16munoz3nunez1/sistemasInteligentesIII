# Ian Mu;oz Nu;ez - Funcion sinusoidal

import matplotlib.pyplot as plt
import numpy as np

n = 1000

v = np.linspace(-10, 10, n)

A = 1
B = 1
C = 0

phi = np.zeros(n)
for i in range(0, n):
    phi[i] = A * np.sin(B*v[i] + C)

plt.figure(1)
plt.grid()

plt.plot(v, phi, 'g', linewidth=2)

plt.title("Funcion sinusoidal", fontsize=20)
plt.xlabel('v', fontsize=15)
plt.ylabel('$\phi$(v)', fontsize=15)

plt.show()

