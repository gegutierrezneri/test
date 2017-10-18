import numpy as np

I = np.eye(3)
Inv = np.array((-1, 0, 1, 0, -1, 1, 0, 0, 1)).reshape((3, 3))
ccw = np.array((0, 1, 0, -1, 0, 1, 0, 0, 1)).reshape((3, 3))
cw = np.array((0, -1, 1, 1, 0, 0, 0, 0, 1)).reshape((3, 3))

## M = np.multiply(R, R)
print(I)
print(Inv)
print(ccw)
print(cw)