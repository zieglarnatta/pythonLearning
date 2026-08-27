def main():
    seq = range (11) #0 - 10 sequential 11 elements
    print_list(seq)
    seq2 = [x*2 for x in seq] #0 - 10 all x multiply by 2 in sequence
    print_list(seq2)
    seq3 = [x for x in seq if x%3 !=0] #modulous, if remainder is NOT zero so non divisible by 3
    print_list(seq3)
    seq4 = [(x, x**2) for x in seq] #make tuple, x squared
    print_list(seq4)
    from math import pi #import the pi from math function
    seq5 = [round(pi, i) for i in seq] #pi rounding to the i-th significant value
    print_list(seq5)
    seq6 = {x: x**2 for x in seq} #dictionary with x, x sqaured
    print(seq6)
    seq7 = {x for x in 'superduper' if x not in 'pd'} #set
    print_list(seq7)

def print_list(o):
    for x in o: print(x, end=' ')
    print()


if __name__ == '__main__': main()
