print("Hello world!!!")
thisText = """ Strings can contain a 'single' and "double within the triple quotes" :P  """
thatText = ''' Triple single quotes also work the Mr Same's magid like "so a needle pulling thread" ;)  '''
print("thisText will read: " + thisText)
print('thatText will read as: ' + thatText)

s = "Python"
print("(s [0]) will print the 0 position of 'Python' aka the 'P' ")
print(s[0])
print("(s [3]) will print the 0 position of 'Python' aka the 'h' ")
print(s[3])

index_last_char = len(s) - 1
print("s [index_last_char]) will print from the last char aka 'n': ")
print(s[index_last_char])

print("s [index_last_char] - 1 will print -2 of the Python from the right, aka 'o' ")
print(s[index_last_char - 1])

# string concatenation
hello = 'Hello'
world = 'world'
empty = ' '
print("concatenation of all 3 variables with space as middle string variable")
print(hello+empty+world)

# multiply it 3 times
print("multiply 3 times the hello variable")
print((hello+empty)*3)

# slicing string Python so 2:4 is inclusive of 2 but exclusive of 4
print('slicing "Python" for 2:4 aka inclusive of 2 but exclusive of 4')
print(s[2:4])

#  find length of "Pytho"
howLong = len(s)
print("find length of the python string")
print(howLong)

print('\a')