import sys
import os

for argv in sys.argv[1:]:
    print(argv)
    os.spawnlp(os.P_WAIT, 'wc', 'wc', argv)
    
    
