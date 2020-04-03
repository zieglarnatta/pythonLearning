#!/usr/bin/env python3


def main():
    infile = open('AnnaCrochet.jpg', 'rb')
    outfile = open('AnnaCrochet-copy.jpg', 'wb')
    while True: #keep writing until there's a break (this case when buffer is empty)
        buf = infile.read(10240) #specify 10k byte file buffer, good for mobile & unknown environments
        if buf:
            outfile.write(buf)
            print('.', end='', flush=True) #end the file, write proper OS specific EOF notation
        else: break # break the while loop when buffer is empty
    outfile.close() #close out the output file
    infile.close() #optional: close out the input file, it was mostly read only
    print('\ndone.')

if __name__ == '__main__': main()
