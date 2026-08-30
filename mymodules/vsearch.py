def search4vowels(phrase:str) -> set:
    """Return any vowels found in a supplied phrase."""
    vowels = set('aeiou')
    return vowels.intersection(set(phrase))

def search4letters (phrase:str, letters:str='aeiou') -> set: # set a default for the letters if none are entered
    """Return a set of the 'letters' found in 'phrase'."""
    return set(letters).intersection(set(phrase))
    # while True:
    #     word = input("Enter any word & we'll detect if you have vowels in them: " +
    #                  "(type qu!t to exit) ")
    #
    #     if word.lower() == "qu!t":
    #         print("Goodbye!")
    #         break
    #
    #     # need to check to ensure it is char and not a number string
    #     if not word.isalpha():
    #         print("Please enter a valid string.")
    # found = vowels.intersection(set(word))
    # for vowel in found:
    #     print(vowel)
    # return bool(found)
    # return vowels.intersection(set(word))