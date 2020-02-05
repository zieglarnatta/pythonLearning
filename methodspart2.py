#!/usr/bin/env python3


class Animal:
    def __init__(self, **kwargs):
        self._type = kwargs['type'] if 'type' in kwargs else 'kitten'
        self._name = kwargs['name'] if 'name' in kwargs else 'fluffy'
        self._sound = kwargs['sound'] if 'sound' in kwargs else 'meow'

    def type(self, t = None):
        if t: self._type = t
        return self._type

    def name(self, n = None):
        if n: self._name = n
        return self._name

    def sound(self, s = None):
        if s: self._sound = s
        return self._sound

    def __str__(self): #special representation that allows string objects to be printed as is
        return f'The {self.type()} is named "{self.name()}" and says "{self.sound()}".'

def main():
    a0 = Animal(type = 'kitten', name = 'fluffy', sound = 'rwar')
    print(a0)
    a1 = Animal(type = 'duck', name = 'donald', sound = 'quack')
    print(a1)
    a0.sound('growl') #use the sound method to replace only the sound value
    print(a0)


if __name__ == '__main__': main()
