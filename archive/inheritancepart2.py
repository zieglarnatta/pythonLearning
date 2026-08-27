#!/usr/bin/env python3


class Animal:
    def __init__(self, **kwargs):
        if 'type' in kwargs: self._type = kwargs['type']
        if 'name' in kwargs: self._name = kwargs['name']
        if 'sound' in kwargs: self._sound = kwargs['sound']

    def type(self, t = None):
        if t: self._type = t
        try: return self._type
        except AttributeError: return None

    def name(self, n = None):
        if n: self._name = n
        try: return self._name
        except AttributeError: return None

    def sound(self, s = None):
        if s: self._sound = s
        try: return self._sound
        except AttributeError: return None

class Duck(Animal):
    def __init__(self, **kwargs):
        self._type = 'duck'
        if 'type' in kwargs: del kwargs['type']
        super().__init__(**kwargs)

class Kitten(Animal):
    def __init__(self, **kwargs):
        self._type = 'kitten'
        if 'type' in kwargs: del kwargs['type']
        super().__init__(**kwargs)

    def kill(self, s): # define a kill method in kitten, but it is not in duck or any other classes
        print(f'{self.name()} will now kill all {s}!') # when this method is called for kitten class, it will take in the new string and pump out the print statement

def print_animal(o):
    if not isinstance(o, Animal):
        raise TypeError('print_animal(): requires an Animal')
    print(f'The {o.type()} is named "{o.name()}" and says "{o.sound()}".')

def main():
    a0 = Kitten(name = 'fluffy', sound = 'rwar')
    a1 = Duck(name = 'donald', sound = 'quack')
    print_animal(a0)
    print_animal(a1)
    a0.kill('rats') # call the a0 Kitten class, and call the kill method and take in rats as the argument to be passed into the print statement
    a1.kill('minime') #test this out to show that there is no such kill method in duck since a1 is duck class related and has no such kill method defined

if __name__ == '__main__': main()
