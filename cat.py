import sys

# "cat" command accepts multiple command line arguments
for arg in sys.argv[1:]:
    with open(arg) as f:
        for line in f:
            print(line, end="")

