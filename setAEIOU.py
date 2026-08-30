vowels = set('aeiou') # one shot initiate a set & slice each char in string to build the set, no repeats!

while True:
    word = input("Enter any word & we'll detect if you have vowels in them: " +
                 "(type qu!t to exit) ")

    if word.lower() == "qu!t":
        print("Goodbye!")
        break

    # need to check to ensure it is char and not a number string
    if not word.isalpha():
        print("Please enter a valid string.")

    found = vowels.intersection(set(word))
    found2 = sorted(found)
    for vowel in found:
        print(vowel)
    print('Sorted detected vowels: ' + str(found2))