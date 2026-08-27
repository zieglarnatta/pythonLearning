def is_it_true(anything):
    '''Tests if the anything argument is true or false
    returns true or false
    '''
    '''anything = ['a','b','new','mpilgrim','new']'''
    if anything:
        print("yes, it is true")
    else:
        print("no, it's false")
if __name__ == '__main__':
    '''anything = ['a','b','new','mpilgrim','new']'''
    '''anything[:]'''
    print(is_it_true([]))
    print(is_it_true(['a']))
    print(is_it_true([False]))
