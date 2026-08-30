vowels = ['a', 'e', 'i', 'o', 'u']

while True:
    word = input("Enter any word & we'll detect if you have vowels in them: " +
                 "(type qu!t to exit) ")

    if word.lower() == "qu!t":
        print("Goodbye!")
        break

    # need to check to ensure it is char and not a number string
    if not word.isalpha():
        print("Please enter a valid string.")

    found = {}
    for keys in ('a', 'e', 'i', 'o', 'u'):
        found[keys] = 0
    # found['a'] = 0
    # found['e'] = 0
    # found['i'] = 0


    for eachLetter in word:
        if eachLetter in vowels:
            found.setdefault(eachLetter, 0)
            found[eachLetter] += 1
    for k,v in sorted(found.items()):
        print(k, ' was found ', v , 'time(s)')