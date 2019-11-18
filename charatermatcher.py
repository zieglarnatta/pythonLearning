

#def charactermatcher(string1, string2):
    # print the introduction message
print("Welcome to the character matcher Python program.")
print("We will proceed to match the common characters from 'string' and 'strong'")
# assign string to first variable
string1 = "string"
# assign strong to second variable
string2 = "string"
# parse each character from the character1 variable and record them as an array
# obtain the length of both string variables to then run against each character in a for loop
j = len(string1) + 1
k = len(string2) + 1
# start the while loop
# start another while loop for string2 variable increment if there is no match
l = 0
while l < j:
    i = 0
    while i < k:
        if string1[l] is string2[i]:
    # assign the match to the varible and print it out
            m = []
            m.append(string1[l])
    # increment to move to the next match
        i += 1
        l += 1
    i+=1
    elif string1[l] is string2[i]:
            m.append(string1[l])
else
    break
    # if there is no match on string2, increment i to move to next character in t he list but still keep checking until the end of string2
        #if string1[l] is string2[i]:
            #match[l] = string1[l]
            #print (string1[l])
        #m.append(string1[l])
  # increment the l to continue moving to the next char in string1
        l += 1
        for x in m:
            print(m)
#    pass
#charactermatcher
