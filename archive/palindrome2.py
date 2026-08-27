# Hello!
# Please create a function that can identify if a string is a palindrome.
# I.E. A word or phrase that is read the same forwards, as backwards.
# Examples provided below

# declare variables

# '1001' == true
# 'tacocat' ==  true
# 'racecar' == true
# 'noon' == true
# 'orange' == false
# 'mono' == false

a_string = 'taCoCat'

def palindrome(a_string):
    a_string = a_string.lower().replace(' ', '')
    reversed_string = ''.join(reversed(a_string))
    return a_string == reversed_string


print('the word or sentence being a palindrome for "' + a_string + '" is:')
print(palindrome(a_string))

a_string = 'race car'
def palindrome(a_string):
    a_string = a_string.lower().replace(' ', '')
    reversed_string = ''
    for i in range(len(a_string), 0, -1):
        reversed_string += a_string[i-1]
    return a_string == reversed_string

print('the word or sentence being a palindrome for "' + a_string + '" is:')
print(palindrome(a_string))

#
#

def isPalindrome(s):
    return s == s[::-1]

# Driver code
s = "1001"
ans = isPalindrome(s)

if ans:
    print("Yes:")
    print(s + " is a palindrome")
else:
    print("No")
    print(s + " is NOT a palindrome")
#
#
word1 = 'tacocat'
word2 = 'racecar'
word3 = 'noon'
word4 = 'orange'
word5 = 'mono'

# do a count count()
thisList = ["t", "a", "c", "o", "c", "a", "t"]

print("thisList value is:")
print(thisList)

# print(len(thislist))

for i in range(len(thisList)):
  print(thisList[i])

thatList = thisList.copy()
list.reverse(thatList)

print("thatList reversed from thislist value is: ")
print(thatList)

# for

# if thatList[0] is thisList[0]
#     print(yay)
# else
#     print(nay)
# end

# if thislist is reverseList
#     print("thislist is a paindrome")
# else
#     print("thislist is NOT a paindrome")
# firstchar = thislist[0]
# lastchar = thislist[6]
# IF
# secondChar = thislist[listSize]



# start for loop based on count
# check first and last and subsequent march to the middle if they are the same
# print result in console