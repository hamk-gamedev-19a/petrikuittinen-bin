import sys
if len(sys.argv) > 1:
    with open(sys.argv[1], "r+") as f:
        data = f.read()
        print(data[::-1])
    
