vowels = ['a', 'e', 'i', 'o', 'u']

while True:
    word = input("Enter any word & we'll detect if you have vowels in them: " +
                 "(type q1 to exit) ")

    if word.lower() == "q1":
        print("Goodbye!")
        break

    # need to check to ensure it is char and not a number string
    if not word.isalpha():
        print("Please enter a valid string.")

    found = []
    notFound = []
    for eachLetter in word:
        if eachLetter in vowels:
            if eachLetter not in found:
                found.append(eachLetter)
        else:
            if eachLetter not in notFound:
                notFound.append(eachLetter)
    print('Here are all the non vowel collection ignoring repeats:')
    for extract in notFound:
        print(extract)
    print('Here are all the vowels ignoring repeats:')
    for vowel in found:
        print(vowel)