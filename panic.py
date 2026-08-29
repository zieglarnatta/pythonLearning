phrase = "Don't panic!"
plist = list(phrase)

print(phrase)
print(plist)

for i in range(4):
    plist.pop() # remove the 'nic!' so you get Don't pa

plist.pop(0) # remove the 'D' so you get on't pa
plist.remove("'") # remove the "'" so you get ont pa
plist.extend([plist.pop(), plist.pop()]) # pop first the p and then a, then reinsert via extend: 'a' then 'p' = ont ap
plist.insert(2, plist.pop(3)) #pop the blank space, then insert it exactly in location 2 ontap --> on tap

new_phrase = ''.join(plist)
print(plist)
print(new_phrase)