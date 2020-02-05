def main():
    nameformatting()

def nameformatting():
    a = "Mike"
    b = "Myers"
    c = "Austin"
    d = "Powers"
    straighttupleformatting = 'My name is {} {}'.format(a, b)
    print(straighttupleformatting)
    positioningtupleformatting = 'My name is {1}, {0}'.format(c, d)
    print(positioningtupleformatting)
    keyvalutpairformatting = 'My name is {e} {f}'.format(e = "Gold", f = "Member")
    print(keyvalutpairformatting)

if __name__ == '__main__':main()
