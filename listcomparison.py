#class compare

#import platform

def main():
    compareme()

def compareme():
    print(x)
    print(y)
    print (x[0])
    print (y[0])
    print(id (x[0]))
    print(id (y[0]))
    print(type (x[0]))
    print(type (y[0]))
    if x[0] == y[0]:
        print('yes, first element of x is the same as first element of y')
    else:
        print('NO! First element of x {} is NOT the same as first element of y {}')

x=[1, 3, 5]
y=[1, 4, 8]

if x[0] == y[0]:
    print('yes, first element of x is the same as first element of y')
else:
    print('NO! First element of x {} is NOT the same as first element of y {}')
#return
if __name__ == '__main__': main()
