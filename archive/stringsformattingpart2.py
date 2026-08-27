#!/usr/bin/env python3

import sys, os

"""class Strings(str):
    def __str__(self):
        return self[::-1] #make it print backwards
helloworld = Strings('Hello World backwards')"""

class EveryOtherString(str):
    def __str__(self):
        return self[::]
first = 30
second = 40
a0 = EveryOtherString(f'the numbers are {first} {second}') #f string takes & matches in order
a = EveryOtherString('the numbers are {1} {0}'.format(first, second)) # positional formatting, 1 to first, 0 to second, can be swapped else it takes it in order
b = EveryOtherString('the numbers are {0:<5} {1:>5}'.format(first, second)) #<5 left justify by 5, includes the numerical spaces
c = EveryOtherString('the numbers are {0:<05} {1:+06}'.format(first, second)) #
d = EveryOtherString('the product of the numbers is: {:,}'.format(first*second*1000)) #formats per thousand & gives a comma separator
e = EveryOtherString('the product of the numbers is: {:,}'.format(first*second*1000).replace(',', '.')) #formats per thousand & gives a period separator
f = EveryOtherString('the numbers is (with 3 decimal places): {:.3f}'.format(first)) # 3 decimal places
g = EveryOtherString('the numbers in hexadecimal: {:x}'.format(first)) #hexadecimal
h = EveryOtherString('the numbers in octal: {:0}'.format(first)) #octal
i = EveryOtherString(f'the numbers in binary: {first:b}') #binary

listy = [a0, a, b, c, d, e, f, g, h, i]
for o in listy:
    print(o)


#if __name__ == '__main__':main()
