# Ian Mu;oz Nu;ez - Perceptron

import numpy as np
from escalon import Escalon as escalon

def Perceptron(P, w, d, eta, iter):
    e = np.zeros(P.shape[1])
    y = np.zeros(P.shape[1])
    for epoca in range(0, iter):
        ep = 0
        for i in range(0, P.shape[1]):
            v = np.dot(w.T, P[:, i])[0]
            y[i] = escalon(v)

            e[i] = d[i] - y[i]
            if e[i] > 0 or e[i] < 0:
                w = w + eta * e[i] * P[:, i].reshape(P.shape[0], 1)
                ep += 1

        if ep == 0:
            break

    return w, e, y

