import numpy as np

def Adaline(P, w, d, eta, iter):
    e = np.zeros(P.shape[1])
    y = np.zeros(P.shape[1])
    for epoca in range(0, iter):
        ep = 0
        for i in range(0, P.shape[1]):
            y[i] = np.dot(w.T, P[:, i])

            e[i] = d[i] - y[i]
            if e[i] > 0 or e[i] < 0:
                w = w + eta*e[i]*P[:, i].reshape(P.shape[0], 1)
                ep += 1

        if ep == 0:
            break

    return w, e, y

