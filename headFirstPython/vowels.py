vowels = ['a', 'e', 'i', 'o', 'u']
word = 'Miliways'
for letter in word:
    if letter in vowels:
        print(letter)

growList = []
print("We are going to grow the list!")
growList.append('a')
growList.append('e')
growList.append('i')
growList.append('o')
growList.append(5)
growList.append('u')
growList.append('Bengali loves you!')
len(growList)
print(growList)
if 20 not in growList:
    print("add in integer '20' if it is not already in the list ;) ")
    growList.append(20)
    len(growList)
    print(growList)

if 'u' not in growList:
    print("add in char 'u' if it is not already in the list ;) ")
    growList.append('u')
    len(growList)
    print(growList)
elif 'u' in growList:
    print("char 'u' is already in the list, so not adding it ;)")