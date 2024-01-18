phrase = "Don't panic!"
plist = list(phrase)

print("plist is:")
print(plist)

print("Start at 0, stop at 10 and steps 3: ")
print("plist:")
plistRender01 = plist[0:10:3]
print(plistRender01)

firstSlice = plist.copy()
print("firstSlice:")
firstSliceParse = firstSlice[0:10:3]
print(firstSliceParse)


print("Start at 3, stop at default (aka last element) and steps default (aka 1): ")
plistRender02 = plist[3:]
print(plistRender02)

print("Start at default (aka first), stop at 10th element and steps default (aka 1): ")
plistRender03 = plist[:10]
print(plistRender03)

print("Start at default (aka first), stop at default (aka last element) and steps 2: ")
plistRender04 = plist[::2]
print(plistRender04)