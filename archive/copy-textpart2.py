#!/usr/bin/env python3


def main():
    infile = open('lines.txt', 'rt')
    outfile = open('lines-copy.txt', 'wt')
    for line in infile:
        print(line.rstrip(), file=outfile) # strips out the end of line, and specify output file var
        print('.', end='', flush=True) # insert OS specific end of file notation
        # outfile.writelines(line) <-- this is a potential alternative to above
    outfile.close()
    infile.close()
    print('\ndone.')

if __name__ == '__main__': main()
