import numpy as np

def Signo(v):
    if len(v):
        y = np.zeros(len(v))
        for i in range(0, len(v)):
            if v[i] >= 0:
                y[i] = 1
            else:
                y[i] = -1
    else:
        y = 0
        if v >= 0:
            y = 1
        else:
            y = -1

    return y

