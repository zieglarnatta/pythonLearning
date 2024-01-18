import plistlib

phrase = "Don't panic!"
plist = list(phrase)
print("phrase variable is a string of:")
print(phrase)

print("plist variable is a list of:")
print(plist)
# for i in range(4):
#     plist.pop()  #pop the last 4 "nic!"
# plist.pop(0)   #pop the fort "D"
# plist.remove("'")  #remove the aprostophe
# plist.extend([plist.pop(),plist.pop()])
# plist.insert(2,plist.pop(3))
#
# new_phrase = ''.join(plist)
new_phrase = ''.join(plist[1:3])   #grab the "on" via slicing
new_phrase = new_phrase + ''.join([plist[5],plist[4],plist[7],plist[6]])     #grab the "t" "a" and "p" positional in the list

# print(plist)
print("new_phrase variable is a new string of:")
print(new_phrase)