#!/usr/bin/env python3
# Copyright 2009-2017 BHG http://bw.org/

def main():
    game = [ 'Rock', 'Paper', 'Scissors', 'Lizard', 'Spock' ]
    print(game[2]) #print out index element 2
    print(game[1:3]) #print slice number 1 to 2 but exclude item 3
    print(game[1:5:2]) #print beginning, end and step
    i = game.index('Paper') #find in the index for the element
    print(game[i])
    print_list(game)
    appendlist(game)
    insertlistpositional(game)
    deletestatement(game)
    jointhemup(game)


def appendlist(game):
    game.append('computer') #append and add to end of list by default
    print_list(game)
    a = game.pop() #reset the game list by popping it at the end
    print(a)


def insertlistpositional(game):
    game.insert(2, 'computer') #append to specific position in list
    print_list(game)
    game.remove('computer') #reset the list by removing by value the string computer
    game.insert(2, 'computer')  # append to specific position in list
    a = game.pop(2)  # reset the game list by popping it at the end
    print(a)


def deletestatement(game):
    game.insert(3, 'microchips') #add to position 3 the word microchips
    print_list(game)
    del game[3]
    print_list(game)
    del game[1:3] #delete slice for items 1 - 2 but not 3rd item as the upper limit
    print_list(game)
    game.insert(1, 'Paper') #restore Paper
    print_list(game)
    game.insert(2, 'Scissors') #restore Scissors
    print_list(game)
    del game[1:5:2] #delete slice 1 - 4 but step by 2, so 1 and 3
    print_list(game)
    game.insert(1, 'Paper') #restore Paper
    game.insert(3, 'Lizard') #restore Lizard
    print_list(game)


def jointhemup(game):
    print(', '.join(game)) #join commaand a space for each element in games
    print_list(game)


def print_list(o):
    for i in o: print(i, end=' ', flush=True)
    print()

if __name__ == '__main__': main()
