#!/usr/bin/env python3

import platform, sys

def main():
    message()

def message():
    x = print('This is python version {}'.format(platform.python_version()))
    try:
        x = int(x)
    except AttributeError:
        print('I caught an attribute error')
    except ValueError:
        print('I caught a value error')
    except: #this is a catch all exception
        print(f'Unknown error: {sys.exc_info()}')
    else:
        print('no errors for this method, good job!')

if __name__ == '__main__': main()
