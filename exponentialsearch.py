import math

def ExponentialSearch(lys, val):
    if lys[0] == val:
        return 0
    index = 1
    while index < len(lys) and lys[index] <= val:
        index = index * 2
        arr = arr[]
    return BinarySearch( arr[:min(index, len(lys))], val)

print(ExponentialSearch([1,2,3,4,5,6,7,8],3))
