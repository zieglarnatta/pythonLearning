#!/usr/bin/env python3

def main():
    a = set("We're gonna need a bigger boat.")
    b = set("I'm sorry, Dave. I'm afraid I can't do that.")
    print_set(a) # random printout due to the nature of sets and only 1 unique occurance
    print_set(b)
    print (a - b) # occurs in a but not b
    print (a | b) # compare both and print what matches
    print (a ^ b) # XOR exclusive or, in A or B but not both
    print (a & b) # A AND B occurance only

def print_set(o):
    print('{', end = '')
    for x in o: print(x, end = '')
    print('}')

if __name__ == '__main__': main()
