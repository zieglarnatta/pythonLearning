#class compare

#import platform

x = [1, 3, 5]
y = [1, 4, 8]
def main():
    compareme()

def compareme():
    print('value of x is: {}'.format(x))
    print('value of y is: {}'.format(y))
    print('and is of type: {}'.format(type(x)))
    print('and is of type: {}'.format(type(y)))
    print('the index for x is {}'.format(id (x[0])))
    print('the index for y is {}'.format(id (y[0])))
    #print(type (x[0]))
    #print(type (y[0]))
    if x[0] == y[0]:
        print('yes, first element of x is the same as first element of y')
    else:
        print('NO! First element of x {} is NOT the same as first element of y {}')

'''x=[1, 3, 5]
y=[1, 4, 8]

if x[0] == y[0]:
    print('yes, first element of x is the same as first element of y')
else:
    print('NO! First element of x {} is NOT the same as first element of y {}')'''

if __name__ == '__main__': main()
