#!/usr/bin/env python3

def main():
    animals = dict(kitten = 'meow', puppy = 'ruff!', lion = 'roar',
        giraffe= 'I am a giraffe!', dragon= 'rawr')
    for k, v in animals.items():
        print(f'{k}: {v}')
    for k in animals.keys(): print(k) #print all the keys only
    for v in animals.values(): print(v) #print all the values only
     #print specific value corresponding to lion
    animals['lion'] = 'I am assigning purr to lion new value in dictionary'
    print(animals['lion'])
    animals['lion'] = 'roar' #resetting the lion as it was
    print(animals['lion'])
    animals['monkey'] = 'adding this new value to new key called monkey'
    print('lion' in animals) #prints True if the key exists
    print('FOUND!' if 'lion' in animals else 'Nope') #nicer way to handle if it finds it
    print('FOUND!' if 'tiger' in animals else 'Nope') #nicer way to handle if it doesn't finds it
    print(animals.get('pineapple')) #using get function, returns none if key not found
    print_dict(animals)

def print_dict(o):
    for k, v in o.items(): print(f'{k}: {v}')

if __name__ == '__main__': main()
