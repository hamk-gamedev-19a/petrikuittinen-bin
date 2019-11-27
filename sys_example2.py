import sys

# calculates sum of command line arguments
a = []
for argv in sys.argv[1:]:
    try:
        a.append(float(argv))
    except ValueError:
        pass  # ignore non-floating point arguments
print("Sum:", sum(a))

