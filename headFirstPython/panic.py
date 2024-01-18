import plistlib

phrase = "Don't panic!"
plist = list(phrase)
print(phrase)
print("the plist variable is currently the list of:")
print(plist)
for i in range(4):
    plist.pop()  #pop the last 4 "nic!"
plist.pop(0)   #pop the fort "D"
plist.remove("'")  #remove the aprostophe
plist.extend([plist.pop(),plist.pop()])
plist.insert(2,plist.pop(3))

new_phrase = ''.join(plist)
print("the plist variable is currently the list of:")
print(plist)
print("new_phrase is:")
print(new_phrase)