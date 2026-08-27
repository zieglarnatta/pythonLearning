#!/user/bin/env python3

class bunny:
    def __init__(self, n):
        self._n = n
    def __repr__(self):
        return f'repr: the number of bunnies is {self._n} 🤗'
    def __str__(self):
        return f'str: the number if bunnies is {self._n}'

x = bunny(66)
print(repr(x)) # print repr specific string, emoji will also be printed
print(x) # this will call str if it exists else it goes for the repr if it exists else it will print the object & location information
print(ascii(x)) # it will print everything but spit out unicode of the emoji
print(ord('🤗')) #print out the unicode of the emoji
print('129303 with chr method gives the emoji:' + chr(129303)) #print out the emoji / character associated with the unicode
