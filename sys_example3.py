import sys

# this is poor man's "cat" command with 1 argument
# read the file given as 1st command line argument
# read the file line by line and print those lines
if len(sys.argv) > 1:
    with open(sys.argv[1]) as f:
        for line in f:
            print(line, end="")

