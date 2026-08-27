#!/usr/bin/env python3
# Copyright 2009-2017 BHG http://bw.org/

def main():
    f = open('lines.txt', 'r') #by default you can skip r as read only mode
    for line in f:
        print(line.rstrip())
    '''f = open('lines.txt', 'w')  # write mode, empties file and writes from start
    for line in f:
        print(line.rstrip())
    f = open('lines.txt', 'a')  # append mode, goes to end of file and adds new line
    for line in f:
        print(line.rstrip())
    f = open('lines.txt', 'r+b')  # read & write mode, binary
    for line in f:
        print(line.rstrip())
    f = open('lines.txt', 'r+t')  #  read & write mode, text
    for line in f:
        print(line.rstrip())'''

if __name__ == '__main__': main()
