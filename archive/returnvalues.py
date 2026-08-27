def main():
    x1 = kitten()
    print(type(x1), x1)

    x2 = cubs()
    print(type(x2), x2)

    x3 = tom()
    print(type(x3), x3)

    x4 = clowder()
    print(type(x4), x4)


def kitten():
    print('kitten Meowwww')
    return 42


def cubs():
    print('cubs Meowwww')
    return (42, 5)


def tom():
    print('tom Meowwww')
    return [42, 1, 5]


def clowder():
    print('clowder Meowwww')
    return dict(locket="necklace")


if __name__ == '__main__': main()
