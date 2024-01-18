book = "The Hitchiker's guide to the Galaxy"
print("book variable is:")
print(book)

bookList = list(book)
print(bookList)

print("The first 3 (bookListThree variable):")
bookListThree = bookList[0:3]
print(bookListThree)

print("Join the word 'The' from above booklistThree:")
bookJoin = ''.join(bookListThree)
print(bookJoin)

print("Join the last 6 words 'Galaxy' via [-6:] from above booklist:")
bookJoin = ''.join(bookList[-6:])
print(bookJoin)

print("Reverse the whole booklist")
backwards = bookList[::-1]
backwards2 = ''.join(backwards)
print(backwards2)

print("Every other")
everyOther = bookList[::2]
everyOther2 = ''.join(everyOther)
print(everyOther2)
print(everyOther)

print("4 to 14 slice:")
sliceSpecial1 = ''.join(bookList[4:14])
print(sliceSpecial1)

print("reverse slice the Hitchiker:")
sliceSpecial2 = ''.join(bookList[13:3:-1])
print(sliceSpecial2)