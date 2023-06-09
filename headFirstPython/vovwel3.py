vowels = ['a', 'e', 'i', 'o', 'u']
word = input('Provide a word to search for vowels:')


growList = []

for letter in word:
    if letter in vowels:
        if letter not in growList:
            growList.append(letter)
for  vowel in growList:
    print(vowel)