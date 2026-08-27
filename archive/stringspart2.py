#!/usr/bin/env python3

import sys, os

class Strings(str):
    def __str__(self):
        return self[::-1] #make it print backwards
helloworld = Strings('Hello World backwards')

class EveryOtherString(str):
    def __str__(self):
        return self[::]
a = EveryOtherString('upper this bad boy'.upper()) #uppercase everything
b = EveryOtherString('cAPITALIZE this bad boy'.capitalize()) #only the first letter of teh sentence
c = EveryOtherString('Swap Case THIS bAd BoY'.swapcase()) #up is down and vice versa
d = EveryOtherString('LOWER CASE THIS THING'.lower()) #lowercase everything
e = EveryOtherString('multiply 42 with 7 and use the format method: {}'.format(42*7))
f = EveryOtherString("""
        Henlo

        World

        remainder {}
        """.format(10%3))
g = EveryOtherString('title this bad boy'.title()) #every wrod's 1st letter gets uppercased
h = EveryOtherString('Großraum-Krankenwagen with casefold() becomes: ' + 'Großraum-Krankenwagen'.casefold()) #agressive lowercasing even for special characters

listy = [helloworld, a, b, c, d, e, g, h]
for o in listy:
    print(o)


#if __name__ == '__main__':main()
