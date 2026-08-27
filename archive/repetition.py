# tacocat
get_repeat_word = input("Input a word that contains repetitive alphabets (example test): ")

for i in range(len(get_repeat_word)):
    
    for j in range(i + 1, len(get_repeat_word)):
        
        if str(get_repeat_word[i]) == str(get_repeat_word[j]):
            
            print(f"{get_repeat_word[i]} is equal to {get_repeat_word[j]}")
            break
        elif j != len(get_repeat_word) and str(get_repeat_word[i]) != str(get_repeat_word[j]):
    
            print(f"j is {j} and the letter is {get_repeat_word[j]}")
            # print(f"The letter {get_repeat_word[i]} is the first non-repeating alphabet the word {get_repeat_word}")
            continue