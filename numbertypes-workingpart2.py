#!/usr/bin/env python3
import sys

x = '47'
y = int(x)
a = float(x)
b = -a
c = abs(b)
d = divmod(b, 3) # returns a tuple of division and remainder (modulus)
e = a + 10j #j is the i imaginary number, else e = complex(x, 10)

elements = (x, y, a, b, c, d, e)
print('\nbegin for loop iteration with try except block: \n')
try:
    for i in elements:
        print(f'{i} is of type {type(i)}')
        print(f'{i} is {i}')
except:
    print(f'error: {sys.exc_info()}')

print('\nbegin manual iteration:')
print(f'x is of type {type(x)}')
print(f'x is {x}')

print(f'y is of type {type(y)}')
print(f'y is {y}')

print(f'a is of type {type(a)}')
print(f'a is {a}')

print(f'b is of type {type(b)}')
print(f'b is {b}')

print(f'c is of type {type(c)}')
print(f'c is {c}')

print(f'd is of type {type(d)}')
print(f'd is {d}')

print(f'e is of type {type(e)}')
print(f'e is {e}')
